package ezen;

public class calculator {

	public double Cal(String x, String y, String op)
	{
		double ix = 0;
		double iy = 0;
		double iz = 0;
		try {
				ix = Double.parseDouble(x);
				iy = Double.parseDouble(y);
				
				if(op.equals("+"))
				{
					iz = ix + iy;
				}
				if(op.equals("-"))
				{
					iz = ix - iy;
				}
				if(op.equals("*"))
				{
					iz = ix * iy;
				}
				if(op.equals("/"))
				{
					iz = ix / iy;
				}
		}catch(Exception e)
		{
			iz=0;
		}
		return iz;
	}
}
