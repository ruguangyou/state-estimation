#ifndef MAP_HPP
#define MAP_HPP

#include "cfsd/common.hpp"
#include "cfsd/config.hpp"
#include "cfsd/structs.hpp"
#include "cfsd/frame.hpp"

#ifdef USE_VIEWER
#include "cfsd/viewer.hpp"
#endif

namespace cfsd {

class Map {
  public: 
    Map(const bool verbose);

    void pushImuConstraint(const Preintegration& pre, const Eigen::Vector3d& gravity, const double& deltaT);

    void pushMapPoint(const Feature& f);

    // void pushFrame(const std::map<size_t,Feature>& features, const std::vector<size_t>& matchedFeatureIDs);

    void checkKeyframe();

    // Feed estimated states to ceres parameters as initial values for optimization.
    int getStates(double** pose, double** v_bga);

    void updateStates(double** pose, double** v_bga);

    void updateImuBias(Preintegration& pre);

    // TODO................
    Sophus::SE3d getBodyPose();
    
    // Compute residuals and jocabians, this function will be called by ceres Evaluate function.
    bool evaluate(const int idx, // imu constraint index
                  const Eigen::Vector3d& r_i, const Eigen::Vector3d& v_i, const Eigen::Vector3d& p_i,
                  const Eigen::Vector3d& bg_i, const Eigen::Vector3d& ba_i,
                  const Eigen::Vector3d& r_j, const Eigen::Vector3d& v_j, const Eigen::Vector3d& p_j,
                  const Eigen::Vector3d& bg_j, const Eigen::Vector3d& ba_j,
                  double* residuals, double** jacobians);
  
  private:
    bool _verbose;

    // State (R, v, p) and bias (bg, ba) from time i to j
    // keyframe: *                         *
    //   camear: *       *        *        *
    //      imu: * * * * * * * * * * * * * *
    // Store keyframes' states and temperorily store current states.
    std::vector<Eigen::Vector3d> _r;
    std::vector<Eigen::Vector3d> _v;
    std::vector<Eigen::Vector3d> _p;
    std::vector<Eigen::Vector3d> _bg;
    std::vector<Eigen::Vector3d> _ba;

    // Minimum rotation and translation for selecting a keyframe.
    double _minRotation, _minTranslation;
    
  public:
    std::vector<ImuConstraint> _imuConstraint;

    std::vector<MapPoint> _mapPoints;

    bool _isKeyframe;

    #ifdef USE_VIEWER
    cfsd::Ptr<Viewer> _pViewer;
    #endif
  
};

} // namespace cfsd

#endif // MAP_HPP