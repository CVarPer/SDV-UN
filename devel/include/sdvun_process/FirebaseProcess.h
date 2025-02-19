// Generated by gencpp from file sdvun_process/FirebaseProcess.msg
// DO NOT EDIT!


#ifndef SDVUN_PROCESS_MESSAGE_FIREBASEPROCESS_H
#define SDVUN_PROCESS_MESSAGE_FIREBASEPROCESS_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace sdvun_process
{
template <class ContainerAllocator>
struct FirebaseProcess_
{
  typedef FirebaseProcess_<ContainerAllocator> Type;

  FirebaseProcess_()
    : key()
    , value()  {
    }
  FirebaseProcess_(const ContainerAllocator& _alloc)
    : key(_alloc)
    , value(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _key_type;
  _key_type key;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _value_type;
  _value_type value;





  typedef boost::shared_ptr< ::sdvun_process::FirebaseProcess_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::sdvun_process::FirebaseProcess_<ContainerAllocator> const> ConstPtr;

}; // struct FirebaseProcess_

typedef ::sdvun_process::FirebaseProcess_<std::allocator<void> > FirebaseProcess;

typedef boost::shared_ptr< ::sdvun_process::FirebaseProcess > FirebaseProcessPtr;
typedef boost::shared_ptr< ::sdvun_process::FirebaseProcess const> FirebaseProcessConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::sdvun_process::FirebaseProcess_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::sdvun_process::FirebaseProcess_<ContainerAllocator1> & lhs, const ::sdvun_process::FirebaseProcess_<ContainerAllocator2> & rhs)
{
  return lhs.key == rhs.key &&
    lhs.value == rhs.value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::sdvun_process::FirebaseProcess_<ContainerAllocator1> & lhs, const ::sdvun_process::FirebaseProcess_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace sdvun_process

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::sdvun_process::FirebaseProcess_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::sdvun_process::FirebaseProcess_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::sdvun_process::FirebaseProcess_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cf57fdc6617a881a88c16e768132149c";
  }

  static const char* value(const ::sdvun_process::FirebaseProcess_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcf57fdc6617a881aULL;
  static const uint64_t static_value2 = 0x88c16e768132149cULL;
};

template<class ContainerAllocator>
struct DataType< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
{
  static const char* value()
  {
    return "sdvun_process/FirebaseProcess";
  }

  static const char* value(const ::sdvun_process::FirebaseProcess_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string key\n"
"string value\n"
;
  }

  static const char* value(const ::sdvun_process::FirebaseProcess_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.key);
      stream.next(m.value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct FirebaseProcess_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::sdvun_process::FirebaseProcess_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::sdvun_process::FirebaseProcess_<ContainerAllocator>& v)
  {
    s << indent << "key: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.key);
    s << indent << "value: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SDVUN_PROCESS_MESSAGE_FIREBASEPROCESS_H
