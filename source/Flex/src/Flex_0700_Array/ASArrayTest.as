package Flex_0700_Array
{
	public class ASArrayTest
	{
		public function ASArrayTest()
		{
			var array1 : Array = [1,2,3,4];
			trace(array1);//打印： 1,2,3,4
			
			var array2 : Array = ["a","b","c"];
			trace(array2); //打印 a,b,c			
			var array3 : Array = new Array();
			array3.push("one");
			array3.push("two");
			array3.push("three"); //压入
			trace(array3); //打印 one,two,three
			
			trace(array3.length); //数组长度 打印  3
			trace(array3[0]);//打印 one 下标取元素
			
			var array4:Array=["zhangsan","lisi","wangwu"];
			
			array4.unshift("1","2");//把参数 放在 数组的最前面
			
			trace(array4); // 1,2，zhangsan,lisi,wangwu
			
			array4.splice(1,0,"sunqi","liuba");//在下标为1的位置开始删除 0个 再插入后面的参数
			
			trace(array4);//打印: 1，sunqi,liuba,2,zhangsan,lisi,wangwu			
			array4.pop();//去掉顶端的元素
			
			trace(array4);// 打印：  1，sunqi,liuba,2,zhangsan,lisi
			
			array4.shift();//去掉底端元素
			trace(array4);// 打印：sunqi,liuba,2,zhangsan,lisi			
			delete array4[0];//把 位置为0 设为 undefined 但位置还在
			
			array4.reverse();//逆序
			
			array4.sort();//排序  参数： Array.CASEINSENSITIVE 不区分大小写   Array.DESCENDING 逆序
			array4.sort(Array.CASEINSENSITIVE); 
			array4.sort(Array.DESCENDING|Array.CASEINSENSITIVE);			
			//对象为元素的 数组排序时 可以 利用 数组sortOn()函数
			//sortOn("指定排序根据对象的属性"，...排序参数）；

		}
	}
}