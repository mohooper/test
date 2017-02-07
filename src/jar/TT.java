package jar;

public class TT {
	
	public static String st="aaaa";
	
	public static void main(String[] args) {
		String s1="";
		String s2="afdddcd";
		
		
		System.out.println(s1.compareTo(s2));
		
		double[]locs={120.281751000000,31.477838000000};
		double[]tansed=bd2gcj(locs);
		System.out.println(tansed[0]+"..."+tansed[1]);
		
		
		System.out.println("sss".substring( 0));
	}
	
	
	
	 public static double[] bd2gcj(double[] locs) {
	        double x = locs[1] - 0.0065, y = locs[0] - 0.006;
	        double z = Math.sqrt(x * x + y * y) - 0.00002 * Math.sin(y * Math.PI);
	        double theta = Math.atan2(y, x) - 0.000003 * Math.cos(x * Math.PI);
	        locs[1] = z * Math.cos(theta);
	        locs[0] = z * Math.sin(theta);
	        return locs;
	    }

}
