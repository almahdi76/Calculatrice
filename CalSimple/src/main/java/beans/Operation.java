package beans;

public class Operation {
	public double oper(double f,double g,String s) {
		if(s.equals("+")) {
			return f+g;
		}
		if(s.equals("*")) {
			return f*g;
		}
		if(s.equals("/")) {
			return f*(1/g);
		}
		if(s.equals("-")) {
			return f-g;
		}
		if(s.equals("**")) {
			return Math.pow(f, g);
		}
		if(s.equals("%")) {
			return f%g;
		}
		return 0;
	}
}
