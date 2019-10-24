declare module "react-native-date-format" {

    export interface DateFormatListener {
        formatedDate: string;
    }

    class RNDateFormatNative {
        public formateMillis(
            query: string, millis: string,
        ): Promise<DateFormatListener>;

        public formatDate(
            date: string, dateFormat: string, returnDate: string,
        ): Promise<DateFormatListener>;
    }

    class RNDateFormat {
        public formateMillis(
            query: string, millis: string,
        ): Promise<DateFormatListener>;

        public formatDate(
            date: string, dateFormat: string, returnDate: string,
        ): Promise<DateFormatListener>;
    }

    const _: RNDateFormat;
    export default _;
}