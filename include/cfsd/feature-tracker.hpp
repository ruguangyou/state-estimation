#ifndef FEATURE_TRACKER_HPP
#define FEATURE_TRACKER_HPP

#include "cfsd/common.hpp"
#include "cfsd/camera-model.hpp"
#include "cfsd/structs.hpp"
#include "cfsd/map.hpp"
#include "ORBextractor.h"

#include <opencv2/features2d/features2d.hpp>
#include <opencv2/imgproc/imgproc.hpp>

// #ifdef DEBUG_IMG
#include <opencv2/highgui/highgui.hpp>
// #endif

namespace cfsd {

class FeatureTracker {
  public:
    FeatureTracker(const cfsd::Ptr<Map>& pMap, const cfsd::Ptr<CameraModel>& pCameraModel, const bool verbose);

    // Feature matching and tracking, including:
    // - internal match (current frame's left and right image)
    // - external track (current features and past features)
    // - refinement? (improve the quality of matching)
    bool processImage(const cv::Mat& imgLeft, const cv::Mat& imgRight);

    void orbDetectWithGrid(int flag, const cv::Mat& img, std::vector<cv::KeyPoint>& keypoints, cv::Mat& descriptors);

    void extractORB(int flag, const cv::Mat& img, std::vector<cv::KeyPoint>& keypoints, cv::Mat& descriptors);

    void internalMatch(const cv::Mat& imgLeft, const cv::Mat& imgRight, const bool useRANSAC = false);

    void externalTrack(const bool useRANSAC = false);

    void featurePoolUpdate(const long& imgTimestamp);

    // void extractOrb(int flag, const cv::Mat& img);

    // SfM: use RANSAC scheme for outlier rejection, and solve 3D-2D PnP problem (in particular, P3P problem).
    // This is used in initialization.
    bool structFromMotion(const cv::Mat& grayLeft, const cv::Mat& grayRight, Eigen::Vector3d& r, Eigen::Vector3d& p, const bool atBeginning = false);

  private:
    bool _verbose;

    // Pinhole camera Model.
    cfsd::Ptr<CameraModel> _pCameraModel;

    cfsd::Ptr<Map> _pMap;

    // Feature ID.
    size_t _featureID{0};
    
    // Frame ID.
    size_t _frameID{0};

    // Detector to be used.
    bool _cvORB{false};

    cv::Ptr<cv::ORB> _orb;
    cv::Ptr<cv::ORB> _orbLeft;
    cv::Ptr<cv::ORB> _orbRight;

    ORB_SLAM2::ORBextractor* _ORBextractorLeft;
    ORB_SLAM2::ORBextractor* _ORBextractorRight;

    // Current features matched with history features.
    // std::vector<cv::Point2d> _matchedHistPixelsL, _matchedHistPixelsR;
    // std::vector<cv::Point2d> _matchedCurPixelsL, _matchedCurPixelsR;

    // Only part of the image is considered to be useful (e.g. the upper half of the image containing sky contributes little to useful features)
    cv::Mat _mask;
    // If the image is cropped, the pixel coordinate of keypoints would be different with the uncropped ones,
    // it would cause dismatching between 3D points and 2D pixels when doing projection.
    // int _cropOffset;

    // Match distance should be less than max(_matchRatio*minDist, _minMatchDist)
    // Ratio for selecting good matches.
    float _matchRatio{0};  
    // Min match distance, based on experience, e.g. 30.0f
    float _minMatchDist{0};
    // For matched pixel (ul, vl) and (ur, vr), |vl-vr| should be small enough if the image has been rectified.
    float _maxVerticalPixelDist{0};

    int _maxFeatureAge{0};

    double _maxDepth{0};

    // Current frame's keypoints' pixel position and descriptors.
    std::vector<cv::Point2d> _curPixelsL, _curPixelsR;
    cv::Mat _curDescriptorsL, _curDescriptorsR;

    // Record which features in current frame will possibly be viewed as new features, if circular matching is satisfied, it will be false; otherwise, true.
    std::vector<bool> _curFeatureMask;

    // History features' id and descriptors
    std::vector<size_t> _histFeatureIDs;
    cv::Mat _histDescriptorsL, _histDescriptorsR;

    // Previous frame's keypoints and descriptors in left image.
    std::vector<cv::KeyPoint> _refKeypointsL;
    cv::Mat _refDescriptorsL;

    // std::vector<cv::KeyPoint> _keypointsL, _keypointsR;
    // cv::Mat _descriptorsL, _descriptorsR;

    // Minimum rotation and translation for picking solvePnP results.
    double _minRotation{0};
    double _minTranslation{0};

    int _solvePnP{0};

  public:
    // Features that pass circular matching, i.e. curLeft <=> histLeft <=> histRight <=> curRight <=> curLeft
    // store the id of the circularly matched features, s.t. the _age grows normally, i.e., increase 1.
    // also store the id of the matches (either left or right side) but not circularly matched features, s.t. the _age will grow more than 1 as penalty.
    // for those not matched features, the _age will grow much more as penalty.
    std::vector<size_t> _matchedFeatureIDs;

    // Available features from history frames.
    // - new features would be added
    // - matched features' _age will be updated
    // - old features that are not useful anymore would be removed
    // so std::map container is choosed due to the efficient access, insert and erase operation.
    std::unordered_map<size_t, cfsd::Ptr<Feature>> _features;
};

} // namespace cfsd

#endif // FEATURE_TRACKER_HPP