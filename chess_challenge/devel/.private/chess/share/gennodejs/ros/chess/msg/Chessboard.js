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

class Chessboard {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.squares = null;
    }
    else {
      if (initObj.hasOwnProperty('squares')) {
        this.squares = initObj.squares
      }
      else {
        this.squares = new Array(64).fill(new Chesspiece());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Chessboard
    // Check that the constant length array field [squares] has the right length
    if (obj.squares.length !== 64) {
      throw new Error('Unable to serialize array field squares - length must be 64')
    }
    // Serialize message field [squares]
    obj.squares.forEach((val) => {
      bufferOffset = Chesspiece.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Chessboard
    let len;
    let data = new Chessboard(null);
    // Deserialize message field [squares]
    len = 64;
    data.squares = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.squares[i] = Chesspiece.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.squares.forEach((val) => {
      length += Chesspiece.getMessageSize(val);
    });
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'chess/Chessboard';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9b8a96936f1ecbd729fc4d2fa9fe3ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    chess/Chesspiece[64] squares
    
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
    const resolved = new Chessboard(null);
    if (msg.squares !== undefined) {
      resolved.squares = new Array(64)
      for (let i = 0; i < resolved.squares.length; ++i) {
        if (msg.squares.length > i) {
          resolved.squares[i] = Chesspiece.Resolve(msg.squares[i]);
        }
        else {
          resolved.squares[i] = new Chesspiece();
        }
      }
    }
    else {
      resolved.squares = new Array(64).fill(new Chesspiece())
    }

    return resolved;
    }
};

module.exports = Chessboard;
