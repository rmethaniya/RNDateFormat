
# react-native-date-format

## Getting started

`$ npm install react-native-date-format --save`


### Mostly automatic installation

`$ react-native link react-native-date-format`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-date-format` and add `RNDateFormat.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNDateFormat.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNDateFormatPackage;` to the imports at the top of the file
  - Add `new RNDateFormatPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-date-format'
  	project(':react-native-date-format').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-date-format/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-date-format')
  	```

#### Windows
[Read it! :D](https://github.com/ReactWindows/react-native)

1. In Visual Studio add the `RNDateFormat.sln` in `node_modules/react-native-date-format/windows/RNDateFormat.sln` folder to their solution, reference from their app.
2. Open up your `MainPage.cs` app
  - Add `using Date.Format.RNDateFormat;` to the usings at the top of the file
  - Add `new RNDateFormatPackage()` to the `List<IReactPackage>` returned by the `Packages` method

---

**Descriptions**

### formateMillis(millis,format)

Convert millisecons to required format

> args :
>
> * millis = milliseconds
> * format = required return date format


### formatDate(date,dateFormat,returnDate)

Convert string date to required date in string

> args:
>
> * date        : original date
> * dateFormat  : original date format
> * returnDate : required date format

---

## Usage
```javascript
import RNDateFormat from 'react-native-date-format';

RNDateFormat.formateMillis('1571226208461', 'dd-MM-yyyy',
      (formatedDate) => {
		console.log('Millis to date : ' + formatedDate);
		//Output
		// Millis to date : 16-10-2019
       });

    RNDateFormat.formatDate("16-10-2019 10:23:56",
    	 "dd-MM-yyyy HH:mm:ss", "yyyy-MM-dd",
    	 (formatedDate) => {
		console.log('Formated date : ' + formatedDate);
		//Output
		// Formated date : : 2019-10-16
    	});

```
  