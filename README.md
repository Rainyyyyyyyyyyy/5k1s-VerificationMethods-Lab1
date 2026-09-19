Запуск:  
``` spin file.pml ```  
Или (с использованием UI)  
1. Перейти в папку spin'a  
2. ```/...path_to_spin.tar.gz.../Spin-version-6.5.2/optional_gui/```  
3. Выполнить команду ```wish -f ispin.tcl```  
4. Внутри программы во вкладке ```Edit/view``` нажать ```Syntax Check```  
5. Внутри программы во вкладке ```Simulate / Replay``` нажать ```(Re)Run```  
5.1 Внизу в консолях появятся логи работы  
6. Во вкладке ```Edit/view``` также можно отобразить представление в виде конечного автомата - справа (синяя консоль) ```Automata view```  
  
  
  
***  
Предварительные предустановки:  
```sudo apt update```  
```sudo apt install spin build-essential```  
```wget https://github.com/nimble-code/Spin/archive/version-6.5.2.tar.gz```  
```tar xzf version-6.5.2.tar.gz```  
```cd Spin-version-6.5.2/Src```  
```make```  
```sudo cp spin /usr/local/bin/```  
```spin -V```  
  
Установка UI:  
```sudo apt update```  
```sudo apt install tk wish```  
```sudo apt install graphviz```  
```cd /...path_to_spin.tar.gz.../Spin-version-6.5.2/optional_gui/```  
```wish -f ispin.tcl```  

