# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from chess/Move.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import chess.msg

class Move(genpy.Message):
  _md5sum = "3eaabe5968b4df351a2b07f580e25456"
  _type = "chess/Move"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 src_row  # 1 to 8
uint8 src_col  # 1 (a) to 8 (h)
uint8 dst_row  # 1 to 8
uint8 dst_col  # 1 (a) to 8 (h)

# See: https://en.wikipedia.org/wiki/Castling
bool is_castling

# Note: The piece may only change if a promotion occurs
# See: https://en.wikipedia.org/wiki/Promotion_(chess)
bool is_promotion
chess/Chesspiece piece

================================================================================
MSG: chess/Chesspiece
string KING=k
string QUEEN=q
string ROOK=r
string KNIGHT=n
string BISHOP=b
string PAWN=p
string EMPTY=

chess/Player player
string kind

================================================================================
MSG: chess/Player
uint8 WHITE=0
uint8 BLACK=1

uint8 id  # one of the two options above
"""
  __slots__ = ['src_row','src_col','dst_row','dst_col','is_castling','is_promotion','piece']
  _slot_types = ['uint8','uint8','uint8','uint8','bool','bool','chess/Chesspiece']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       src_row,src_col,dst_row,dst_col,is_castling,is_promotion,piece

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Move, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.src_row is None:
        self.src_row = 0
      if self.src_col is None:
        self.src_col = 0
      if self.dst_row is None:
        self.dst_row = 0
      if self.dst_col is None:
        self.dst_col = 0
      if self.is_castling is None:
        self.is_castling = False
      if self.is_promotion is None:
        self.is_promotion = False
      if self.piece is None:
        self.piece = chess.msg.Chesspiece()
    else:
      self.src_row = 0
      self.src_col = 0
      self.dst_row = 0
      self.dst_col = 0
      self.is_castling = False
      self.is_promotion = False
      self.piece = chess.msg.Chesspiece()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_7B().pack(_x.src_row, _x.src_col, _x.dst_row, _x.dst_col, _x.is_castling, _x.is_promotion, _x.piece.player.id))
      _x = self.piece.kind
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.piece is None:
        self.piece = chess.msg.Chesspiece()
      end = 0
      _x = self
      start = end
      end += 7
      (_x.src_row, _x.src_col, _x.dst_row, _x.dst_col, _x.is_castling, _x.is_promotion, _x.piece.player.id,) = _get_struct_7B().unpack(str[start:end])
      self.is_castling = bool(self.is_castling)
      self.is_promotion = bool(self.is_promotion)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.piece.kind = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.piece.kind = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_7B().pack(_x.src_row, _x.src_col, _x.dst_row, _x.dst_col, _x.is_castling, _x.is_promotion, _x.piece.player.id))
      _x = self.piece.kind
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.piece is None:
        self.piece = chess.msg.Chesspiece()
      end = 0
      _x = self
      start = end
      end += 7
      (_x.src_row, _x.src_col, _x.dst_row, _x.dst_col, _x.is_castling, _x.is_promotion, _x.piece.player.id,) = _get_struct_7B().unpack(str[start:end])
      self.is_castling = bool(self.is_castling)
      self.is_promotion = bool(self.is_promotion)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.piece.kind = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.piece.kind = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_7B = None
def _get_struct_7B():
    global _struct_7B
    if _struct_7B is None:
        _struct_7B = struct.Struct("<7B")
    return _struct_7B
