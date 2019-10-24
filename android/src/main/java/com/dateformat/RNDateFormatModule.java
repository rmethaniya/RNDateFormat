
package com.dateformat;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;

import com.facebook.react.bridge.Callback;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class RNDateFormatModule extends ReactContextBaseJavaModule {

    private final ReactApplicationContext reactContext;

    public RNDateFormatModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
    }

    @Override
    public String getName() {
        return "RNDateFormat";
    }


    @ReactMethod
    public void formateMillis(String millis, String returnFormat, Callback callback) {
        if (TextUtils.isEmpty(millis) || Long.parseLong(millis) <= 0) {
            callback.invoke("");
        }
        Date date = new Date(Long.parseLong(millis));
        callback.invoke(new SimpleDateFormat(returnFormat, Locale.getDefault()).format(date));
    }

    /**
     * Convert String to date
     *
     * @param strDate    String date
     * @param dateFormat date format
     * @return Formatted Date
     */
    public Date stringToDate(String strDate, String dateFormat) {
        SimpleDateFormat format = new SimpleDateFormat(dateFormat, Locale.getDefault());
        try {
            return format.parse(strDate);
        } catch (ParseException e) {
            return null;
        }
    }

    /**
     * Convert String time to required date formate
     *
     * @param strDate        string date
     * @param currentFormat  current string date formate
     * @param requiredFormat return required formate
     * @return formated date
     */
    @ReactMethod
    public void formatDate(String strDate, String currentFormat, String requiredFormat, Callback callback) {
        Date date = stringToDate(strDate, currentFormat);
        callback.invoke(dateToString(date, requiredFormat));
    }

    /**
     * Convert String to Date
     *
     * @param selectedDate selectedDate
     * @param serverFormat date format
     * @return string
     */
    public String dateToString(Date selectedDate, String serverFormat) {
        return new SimpleDateFormat(serverFormat, Locale.getDefault()).format(selectedDate);
    }
}