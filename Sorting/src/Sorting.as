package
{
	import flash.display.Sprite;
	
	public class Sorting extends Sprite
	{
		public function Sorting()
		{
			var a:Array = [2, 5, 4, 1, 8, 9, 7, 5, 4, 2, 6];
			var b:Array = [91, 34, 23, 87, 67, 2, 5, 4, 1, 8, 9, 7, 5, 4, 2, 6];
			
			for (var i:int = 0; i < b.length; i++) 
			{
				a.push(b[i]);
			}
	
			/* Alternative approuch to join two arrays
			
			var c:Array = a.concat(b);
			sorting(c);
			*/
			
			sorting(a);
			
		}
		
		private function sorting(arr:Array):void
		{
			for (var i:int = 0; i < arr.length; i++)
			{
				for (var j:int = i + 1; j < arr.length; j++)
				{
					if (arr[j] < arr[i])
					{
						var temp:int = arr[i];
						arr[i] = arr[j];
						arr[j] = temp;
					}
				}
			}
			trace(arr);//   Output: 1,1,2,2,2,2,4,4,4,4,5,5,5,5,6,6,7,7,8,8,9,9,23,34,67,87,91
		}
		
		
	}
}