// Generated by gencpp from file chess/Move.msg
// DO NOT EDIT!


#ifndef CHESS_MESSAGE_MOVE_H
#define CHESS_MESSAGE_MOVE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <chess/Chesspiece.h>

namespace chess
{
template <class ContainerAllocator>
struct Move_
{
  typedef Move_<ContainerAllocator> Type;

  Move_()
    : src_row(0)
    , src_col(0)
    , dst_row(0)
    , dst_col(0)
    , is_castling(false)
    , is_promotion(false)
    , piece()  {
    }
  Move_(const ContainerAllocator& _alloc)
    : src_row(0)
    , src_col(0)
    , dst_row(0)
    , dst_col(0)
    , is_castling(false)
    , is_promotion(false)
    , piece(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _src_row_type;
  _src_row_type src_row;

   typedef uint8_t _src_col_type;
  _src_col_type src_col;

   typedef uint8_t _dst_row_type;
  _dst_row_type dst_row;

   typedef uint8_t _dst_col_type;
  _dst_col_type dst_col;

   typedef uint8_t _is_castling_type;
  _is_castling_type is_castling;

   typedef uint8_t _is_promotion_type;
  _is_promotion_type is_promotion;

   typedef  ::chess::Chesspiece_<ContainerAllocator>  _piece_type;
  _piece_type piece;





  typedef boost::shared_ptr< ::chess::Move_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::chess::Move_<ContainerAllocator> const> ConstPtr;

}; // struct Move_

typedef ::chess::Move_<std::allocator<void> > Move;

typedef boost::shared_ptr< ::chess::Move > MovePtr;
typedef boost::shared_ptr< ::chess::Move const> MoveConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::chess::Move_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::chess::Move_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::chess::Move_<ContainerAllocator1> & lhs, const ::chess::Move_<ContainerAllocator2> & rhs)
{
  return lhs.src_row == rhs.src_row &&
    lhs.src_col == rhs.src_col &&
    lhs.dst_row == rhs.dst_row &&
    lhs.dst_col == rhs.dst_col &&
    lhs.is_castling == rhs.is_castling &&
    lhs.is_promotion == rhs.is_promotion &&
    lhs.piece == rhs.piece;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::chess::Move_<ContainerAllocator1> & lhs, const ::chess::Move_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace chess

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::chess::Move_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::chess::Move_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chess::Move_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::chess::Move_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chess::Move_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::chess::Move_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::chess::Move_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3eaabe5968b4df351a2b07f580e25456";
  }

  static const char* value(const ::chess::Move_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3eaabe5968b4df35ULL;
  static const uint64_t static_value2 = 0x1a2b07f580e25456ULL;
};

template<class ContainerAllocator>
struct DataType< ::chess::Move_<ContainerAllocator> >
{
  static const char* value()
  {
    return "chess/Move";
  }

  static const char* value(const ::chess::Move_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::chess::Move_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 src_row  # 1 to 8\n"
"uint8 src_col  # 1 (a) to 8 (h)\n"
"uint8 dst_row  # 1 to 8\n"
"uint8 dst_col  # 1 (a) to 8 (h)\n"
"\n"
"# See: https://en.wikipedia.org/wiki/Castling\n"
"bool is_castling\n"
"\n"
"# Note: The piece may only change if a promotion occurs\n"
"# See: https://en.wikipedia.org/wiki/Promotion_(chess)\n"
"bool is_promotion\n"
"chess/Chesspiece piece\n"
"\n"
"================================================================================\n"
"MSG: chess/Chesspiece\n"
"string KING=k\n"
"string QUEEN=q\n"
"string ROOK=r\n"
"string KNIGHT=n\n"
"string BISHOP=b\n"
"string PAWN=p\n"
"string EMPTY=\n"
"\n"
"chess/Player player\n"
"string kind\n"
"\n"
"================================================================================\n"
"MSG: chess/Player\n"
"uint8 WHITE=0\n"
"uint8 BLACK=1\n"
"\n"
"uint8 id  # one of the two options above\n"
;
  }

  static const char* value(const ::chess::Move_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::chess::Move_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.src_row);
      stream.next(m.src_col);
      stream.next(m.dst_row);
      stream.next(m.dst_col);
      stream.next(m.is_castling);
      stream.next(m.is_promotion);
      stream.next(m.piece);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Move_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::chess::Move_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::chess::Move_<ContainerAllocator>& v)
  {
    s << indent << "src_row: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.src_row);
    s << indent << "src_col: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.src_col);
    s << indent << "dst_row: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dst_row);
    s << indent << "dst_col: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dst_col);
    s << indent << "is_castling: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_castling);
    s << indent << "is_promotion: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_promotion);
    s << indent << "piece: ";
    s << std::endl;
    Printer< ::chess::Chesspiece_<ContainerAllocator> >::stream(s, indent + "  ", v.piece);
  }
};

} // namespace message_operations
} // namespace ros

#endif // CHESS_MESSAGE_MOVE_H
