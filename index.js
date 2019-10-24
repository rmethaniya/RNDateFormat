
import React from 'react'

import { NativeModules } from 'react-native'

const RNDateFormatNative = NativeModules.RNDateFormat

class RNDateFormat {
	
    formateMillis(millis,format) {
	    return RNDateFormatNative.formateMillis(millis,format);
    }
    formatDate(date,dateFormat,returnDate) {
	    return RNDateFormatNative.formatDate(date,dateFormat,returnDate);
	}
}

export default new RNDateFormat()