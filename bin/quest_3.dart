import 'dart:io';

void main(){
  print("Welcome to the Library Management System!");
  int choice= printOptions();

  if(choice>0){
    operation(choice);
    print("Do you want to continue ?(yes/no)");
    String checkNext= stdin.readLineSync()!.toLowerCase();
    if(checkNext!="no"){
      printOptions();
    }else{
      print("Thank you for using the Library Management System. Goodbye!");
    }
    
  }else{
    print("Invalid entry");
  }
}

void operation(int value) {
  Map <String,String>bookMap={};
if(value==1){
    stdout.write("Enter book title: ");
  String bookName= stdin.readLineSync()!;
  stdout.write("Enter book author: ");
  String bookAuth= stdin.readLineSync()!;
  print("Book added successfully!");
  bookMap.addEntries([MapEntry(bookName, bookAuth)]); 
  print(bookMap); 
}else if(value==2){
print("hi");
}else if(value==3){
bookMap.clear();

}else{
print(bookMap); 
}



// switch(value){
//   case 1: 
//   stdout.write("Enter book title: ");
//   String bookName= stdin.readLineSync()!;
//   stdout.write("Enter book author: ");
//   String bookAuth= stdin.readLineSync()!;
//   print("Book added successfully!");
//   bookMap.addEntries([MapEntry(bookName, bookAuth)]); 
//   print(bookMap); break;
  

//   case 2:
//   stdout.write("Enter book title to be : ");
//   String bookName= stdin.readLineSync()!;
//   stdout.write("Enter book author: ");
//   String bookAuth= stdin.readLineSync()!;
//   print("Book added successfully!"); break;

//   case 3:
//   bookMap.clear();
//   print("Deleted all entries");break;

//   case 4:
//   print("hi");
//   //print(bookMap.values);
  
//   default:
//   print("Invalid");


    
//}


}

int printOptions() {
  int uOpt;
  List <int> options= [1,2,3,4];
print("Choose an option:");
print("1. Add Book");
print("2. Edit Book");
print("3. Delete Book");
print("4. Get All Books");
stdout.write("Enter your choice (1-4): ");
uOpt= int.tryParse(stdin.readLineSync()!)??0;
if(options.contains(uOpt)){
return uOpt;
}else{
  return 0;
}

}