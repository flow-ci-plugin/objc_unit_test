# objc_unit_test
Start an iOS emulator, which could run your unitTests in flow.ci



## EXAMPLE 

```yml
steps:
  - name: objc_unit_test
    enable: true
    failure: true
    plugin:
      name: objc_unit_test
```
