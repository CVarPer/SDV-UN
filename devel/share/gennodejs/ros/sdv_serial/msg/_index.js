
"use strict";

let motors = require('./motors.js');
let ultrasound = require('./ultrasound.js');
let tag_rfid = require('./tag_rfid.js');
let sdv_status = require('./sdv_status.js');
let battery = require('./battery.js');
let flexiforce = require('./flexiforce.js');
let encoder = require('./encoder.js');

module.exports = {
  motors: motors,
  ultrasound: ultrasound,
  tag_rfid: tag_rfid,
  sdv_status: sdv_status,
  battery: battery,
  flexiforce: flexiforce,
  encoder: encoder,
};
