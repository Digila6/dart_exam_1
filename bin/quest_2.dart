import 'dart:io';

void main(){
  List<int> oddNumbers=[];
  List<int> evenNumbers=[];
  List<int> uList=[];
  stdout.write("Enter any numbers with spaces:");
  String? input= stdin.readLineSync()!;
  uList= input.split(',').map(int.parse).toList();
  if(input=="0"){
    
  }
  print(uList);
 
   for(int i=0;i<uList.length;i++){
    if(uList[i]%2==0){
      evenNumbers.add(uList[i]);
      print("Even number list:");
      
  //   print("Even number List");
  //   print(evenNumbers);
    }else{
      oddNumbers.add(uList[i]);
      print("Odd Number List");
      
    }

  print(evenNumbers);
  print(oddNumbers);
  }

  }
  
  
  
 


