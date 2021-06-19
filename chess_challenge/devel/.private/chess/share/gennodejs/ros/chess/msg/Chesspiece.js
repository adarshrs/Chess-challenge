// Auto-generated. Do not edit!

// (in-package chess.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Player = require('./Player.js');

//-----------------------------------------------------------

class Chesspiece {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.player = null;
      this.kind = null;
    }
    else {
      if (initObj.hasOwnProperty('player')) {
        this.player = initObj.player
      }
      else {
        this.player = new Player();
      }
      if (initObj.hasOwnProperty('kind')) {
        this.kind = initObj.kind
      }
      else {
        this.kind = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Chesspiece
    // Serialize message field [player]
    bufferOffset = Player.serialize(obj.player, buffer, bufferOffset);
    // Serialize message field [kind]
    bufferOffset = _serializer.string(obj.kind, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Chesspiece
    let len;
    let data = new Chesspiece(null);
    // Deserialize message field [player]
    data.player = Player.deserialize(buffer, bufferOffset);
    // Deserialize message field [kind]
    data.kind = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.kind.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'chess/Chesspiece';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '307c05ea07e91a96fc14a8ccf97033ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Chesspiece(null);
    if (msg.player !== undefined) {
      resolved.player = Player.Resolve(msg.player)
    }
    else {
      resolved.player = new Player()
    }

    if (msg.kind !== undefined) {
      resolved.kind = msg.kind;
    }
    else {
      resolved.kind = ''
    }

    return resolved;
    }
};

// Constants for message
Chesspiece.Constants = {
  KING: 'k',
  QUEEN: 'q',
  ROOK: 'r',
  KNIGHT: 'n',
  BISHOP: 'b',
  PAWN: 'p',
  EMPTY: '',
}

module.exports = Chesspiece;
