export interface DateFormatNativeModule {
    formateMillis: (date,requiredFormat) => Promise<string>;
    formatDate: (date,dateFormat,returnDate) => Promise<string>;
}