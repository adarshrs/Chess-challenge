// Auto-generated. Do not edit!

// (in-package chess.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Chesspiece = require('./Chesspiece.js');

//-----------------------------------------------------------

class Move {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.src_row = null;
      this.src_col = null;
      this.dst_row = null;
      this.dst_col = null;
      this.is_castling = null;
      this.is_promotion = null;
      this.piece = null;
    }
    else {
      if (initObj.hasOwnProperty('src_row')) {
        this.src_row = initObj.src_row
      }
      else {
        this.src_row = 0;
      }
      if (initObj.hasOwnProperty('src_col')) {
        this.src_col = initObj.src_col
      }
      else {
        this.src_col = 0;
      }
      if (initObj.hasOwnProperty('dst_row')) {
        this.dst_row = initObj.dst_row
      }
      else {
        this.dst_row = 0;
      }
      if (initObj.hasOwnProperty('dst_col')) {
        this.dst_col = initObj.dst_col
      }
      else {
        this.dst_col = 0;
      }
      if (initObj.hasOwnProperty('is_castling')) {
        this.is_castling = initObj.is_castling
      }
      else {
        this.is_castling = false;
      }
      if (initObj.hasOwnProperty('is_promotion')) {
        this.is_promotion = initObj.is_promotion
      }
      else {
        this.is_promotion = false;
      }
      if (initObj.hasOwnProperty('piece')) {
        this.piece = initObj.piece
      }
      else {
        this.piece = new Chesspiece();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Move
    // Serialize message field [src_row]
    bufferOffset = _serializer.uint8(obj.src_row, buffer, bufferOffset);
    // Serialize message field [src_col]
    bufferOffset = _serializer.uint8(obj.src_col, buffer, bufferOffset);
    // Serialize message field [dst_row]
    bufferOffset = _serializer.uint8(obj.dst_row, buffer, bufferOffset);
    // Serialize message field [dst_col]
    bufferOffset = _serializer.uint8(obj.dst_col, buffer, bufferOffset);
    // Serialize message field [is_castling]
    bufferOffset = _serializer.bool(obj.is_castling, buffer, bufferOffset);
    // Serialize message field [is_promotion]
    bufferOffset = _serializer.bool(obj.is_promotion, buffer, bufferOffset);
    // Serialize message field [piece]
    bufferOffset = Chesspiece.serialize(obj.piece, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Move
    let len;
    let data = new Move(null);
    // Deserialize message field [src_row]
    data.src_row = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [src_col]
    data.src_col = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dst_row]
    data.dst_row = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dst_col]
    data.dst_col = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_castling]
    data.is_castling = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_promotion]
    data.is_promotion = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [piece]
    data.piece = Chesspiece.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Chesspiece.getMessageSize(object.piece);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'chess/Move';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3eaabe5968b4df351a2b07f580e25456';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 src_row  # 1 to 8
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Move(null);
    if (msg.src_row !== undefined) {
      resolved.src_row = msg.src_row;
    }
    else {
      resolved.src_row = 0
    }

    if (msg.src_col !== undefined) {
      resolved.src_col = msg.src_col;
    }
    else {
      resolved.src_col = 0
    }

    if (msg.dst_row !== undefined) {
      resolved.dst_row = msg.dst_row;
    }
    else {
      resolved.dst_row = 0
    }

    if (msg.dst_col !== undefined) {
      resolved.dst_col = msg.dst_col;
    }
    else {
      resolved.dst_col = 0
    }

    if (msg.is_castling !== undefined) {
      resolved.is_castling = msg.is_castling;
    }
    else {
      resolved.is_castling = false
    }

    if (msg.is_promotion !== undefined) {
      resolved.is_promotion = msg.is_promotion;
    }
    else {
      resolved.is_promotion = false
    }

    if (msg.piece !== undefined) {
      resolved.piece = Chesspiece.Resolve(msg.piece)
    }
    else {
      resolved.piece = new Chesspiece()
    }

    return resolved;
    }
};

module.exports = Move;
