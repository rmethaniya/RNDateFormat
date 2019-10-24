
// import { NativeModules } from 'react-native';

// const { RNDateFormat } = NativeModules;

// export default RNDateFormat;

/**
 * @providesModule react-native-date-format
 */
import { Platform, NativeModules } from 'react-native';

var RNDateFormat = NativeModules.RNDateFormat;

if (!RNDateFormat) {
  // Produce an error if we don't have the native module
  if (
    Platform.OS === 'android' ||
    Platform.OS === 'ios'
  ) {
    throw new Error("RNDateFormat undefined");
  }

  RNDateFormat = require('./default');
}

export default {
    formateMillis: function() {
    return RNDateFormat.formateMillis('1','1');
  },
};
