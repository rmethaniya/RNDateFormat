// should be imported this way:
// import RNDateFormat from 'react-native-date-format';
import RNDateFormat from './internal/nativeInterface'

export async function formateMillis() {
    return await RNDateFormat.formateMillis('','');
}
export async function formatDate() {
    return await RNDateFormat.formatDate('','',"");
}

