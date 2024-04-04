## Description
The project is a Dart library for SMS verification codes.

## Features

<img src="https://raw.githubusercontent.com/yixiaolunhui/verification_code/master/img/code.gif" width="300"/>

## Getting started
    verification_code:^0.0.4


## Usage

```dart 
   VerificationCode(
      height: 50,
      style: CodeStyle.form,
      maxLength: 4,
      itemWidth: 50,
      onCompleted: (String value) {
          print("CodeStyle.form value=$value");
      },
    ),
```

## Code Style
| style     |                     code                     |    
|:----------|:--------------------------------------------:|
| form      |   VerificationCode(style: CodeStyle.form)    |  
| rectangle | VerificationCode(style: CodeStyle.rectangle) |  
| line      |   VerificationCode(style: CodeStyle.line)    |  
| circle    |  VerificationCode(style: CodeStyle.circle)   |  



