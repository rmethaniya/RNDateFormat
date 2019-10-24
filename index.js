
import React from 'react'

import { NativeModules } from 'react-native'

const RNDateFormatNative = NativeModules.RNDateFormat

class RNDateFormat {
	
    formateMillis(millis,format,callBack) {
	    return RNDateFormatNative.formateMillis(millis,format,callBack);
    }
    formatDate(date,dateFormat,returnDate,callBack) {
	    return RNDateFormatNative.formatDate(date,dateFormat,returnDate,callBack);
	}
}

export default new RNDateFormat()