// Generated by gencpp from file gazebo_msgs/AddLinkRequest.msg
// DO NOT EDIT!


#ifndef GAZEBO_MSGS_MESSAGE_ADDLINKREQUEST_H
#define GAZEBO_MSGS_MESSAGE_ADDLINKREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gazebo_msgs
{
template <class ContainerAllocator>
struct AddLinkRequest_
{
  typedef AddLinkRequest_<ContainerAllocator> Type;

  AddLinkRequest_()
    : name()
    , reference_frame()  {
    }
  AddLinkRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , reference_frame(_alloc)  {
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _reference_frame_type;
  _reference_frame_type reference_frame;




  typedef boost::shared_ptr< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> const> ConstPtr;

}; // struct AddLinkRequest_

typedef ::gazebo_msgs::AddLinkRequest_<std::allocator<void> > AddLinkRequest;

typedef boost::shared_ptr< ::gazebo_msgs::AddLinkRequest > AddLinkRequestPtr;
typedef boost::shared_ptr< ::gazebo_msgs::AddLinkRequest const> AddLinkRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gazebo_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/jade/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/jade/share/std_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/jade/share/trajectory_msgs/cmake/../msg'], 'gazebo_msgs': ['/home/bilynbk/catkin_ws_ahl/src/ahl_ros_packages/existing_packages/gazebo_ros_pkgs/gazebo_msgs/msg'], 'geometry_msgs': ['/opt/ros/jade/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ec8df5ac806767963e931886ff3d220b";
  }

  static const char* value(const ::gazebo_msgs::AddLinkRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xec8df5ac80676796ULL;
  static const uint64_t static_value2 = 0x3e931886ff3d220bULL;
};

template<class ContainerAllocator>
struct DataType< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gazebo_msgs/AddLinkRequest";
  }

  static const char* value(const ::gazebo_msgs::AddLinkRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
string reference_frame\n\
";
  }

  static const char* value(const ::gazebo_msgs::AddLinkRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.reference_frame);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AddLinkRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gazebo_msgs::AddLinkRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gazebo_msgs::AddLinkRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "reference_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.reference_frame);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GAZEBO_MSGS_MESSAGE_ADDLINKREQUEST_H
