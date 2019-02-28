#ifndef COMMON_HPP
#define COMMON_HPP

// commonly include files: std, OpenCV, Eigen, Sophus

// Eigen
#include <Eigen/Core>       // Matrix and Array classes, basic linear algebra (including triangular and selfadjoint products), array manipulation
#include <Eigen/Geometry>   // Transform, Translation, Scaling, Rotation2D and 3D rotations (Quaternion, AngleAxis)

// Sophus
#include <sophus/so3.hpp>
#include <sophus/se3.hpp>

// OpenCV
#include <opencv2/core/core.hpp>
#include <opencv2/core/eigen.hpp> // cv::eigen2cv, cv::cv2eigen

// std
#include <algorithm>        // algorithms that operate on ranges
#include <iostream>         // several standard stream objects
#include <list>             // std::list container
#include <map>              // std::map and std::multimap associative containers
#include <memory>           // higher level memory management utilities
#include <set>              // std::set and std::multiset associative containers
#include <string>           // std::basic_string class template
#include <unordered_map>    // std::unordered_map and std::unordered_multimap unordered associative containers
#include <vector>           // std::vector container

typedef float precisionType;
typedef Eigen::Matrix3f EigenMatrix3Type;
typedef Eigen::Vector3f EigenVector3Type;
typedef Eigen::Vector2f EigenVector2Type;
typedef Eigen::Matrix<float,4,1> EigenVector4Type;
typedef Sophus::SE3f SophusSE3Type;
typedef Sophus::SO3f SophusSO3Type;
typedef cv::Point3f cvPoint3Type;
typedef cv::Point2f cvPoint2Type;

#endif // COMMON_HPP