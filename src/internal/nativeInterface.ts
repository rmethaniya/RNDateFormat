import { NativeModules } from 'react-native';
import { DateFormatNativeModule } from './privateTypes';

let RNDateFormat: DateFormatNativeModule | undefined = NativeModules.RNDateFormat;


if (!RNDateFormat) {
    throw new Error('RNDateFormat not found');

}

export default RNDateFormat as DateFormatNativeModule;