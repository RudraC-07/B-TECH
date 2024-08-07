const path = require('path');

console.log(path.dirname('C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DBMS-I'))

console.log(path.normalize('C:\\Users\\Dell\\..\\B.TECH\\SEM-3\\DBMS-I\\..'))

console.log(path.join('C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DBMS-I','C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DATA STRUCTURE\\Lab_11'))

console.log(path.resolve('Desktop\\B.TECH\\SEM-3\\DBMS-I','C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DATA STRUCTURE\\Lab_11'))

console.log(path.relative('C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DBMS-I','C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DATA STRUCTURE\\Lab_11'))

console.log(path.basename('C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DBMS-I'))

console.log(path.extname('C:\\Users\\Dell\\Desktop\\B.TECH\\SEM-3\\DBMS-I\\LAB_4.sql'))