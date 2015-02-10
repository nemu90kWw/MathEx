package
{
	import flash.geom.Point;
	
	public class MathEx
	{
		// ------------------------ //
		// 角度
		// ------------------------ //
		private static const DIV:Number = 128;
		
		public static function vx(dir:Number, speed:Number):Number
		{
			return Math.cos(Math.PI / DIV * dir) * speed;
		}
		
		public static function vy(dir:Number, speed:Number):Number
		{
			return Math.sin(Math.PI / DIV * dir) * speed;
		}
		
		public static function deltaAngle(dir1:Number, dir2:Number):Number
		{
			var d1:Number = normalizeAngle(dir1);
			var d2:Number = normalizeAngle(dir2);
			
			if(d2 - DIV > d1) {d1 += DIV * 2;}
			if(d2 + DIV < d1) {d1 -= DIV * 2;}
			
			return d1-d2;
		}
		
		public static function angle(x1:Number, y1:Number, x2:Number, y2:Number, divide:int = 0):Number
		{
			var tempx:Number = x2 - x1;
			var tempy:Number = y2 - y1;
			
			if(divide == 0) {
				return Math.atan2(tempy, tempx) * DIV / Math.PI;
			}
			else {
				return Math.round((Math.atan2(tempy, tempx) * DIV / Math.PI) / (DIV * 2 / divide)) * (DIV * 2 / divide);
			}
		}
		
		public static function distance(x1:Number, y1:Number, x2:Number, y2:Number):Number
		{
			return Point.distance(new Point(x1, y1), new Point(x2, y2));
		}
		
		public static function normalizeAngle(dir:Number):Number
		{
			if (dir < -DIV) {
				dir = DIV * 2 - (-dir % (DIV * 2));
			}
			dir = (dir + DIV) % (DIV * 2) - DIV;
			return dir;
		}
		
		// ------------------------ //
		// 乱数
		// ------------------------ //
		public static function rand(min:Number, max:Number):Number
		{
			return Math.random() * (max - min) + min;
		}
		
		public static function rand_int(min:int, max:int):int
		{
			return Math.floor(Math.random() * (max - min + 1) + min);
		}
		
		// ------------------------ //
		// 制限
		// ------------------------ //
		public static function clamp(value:Number, min:Number, max:Number):Number
		{
			return Math.max(min, Math.min(value, max));
		}
		
		public static function repeat(value:Number, length:Number):Number
		{
			if(value < 0) {
				return length + (value % length);
			}
			
			return value % length;
		}
		
		// ------------------------ //
		// 文字列
		// ------------------------ //
		public static function zeroPadding(num:Number, digit:int):String
		{
			if(num.toString().length <= digit) {
				return (1 << (digit - String(num).length)).toString(2).substr(1) + num;
			}
			else {
				return String(Math.pow(10, digit) - 1);	//カンスト
			}
		}
	}
}
