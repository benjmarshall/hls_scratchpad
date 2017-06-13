double fact(int x) {
	double result_int = 1.0;
	for (int i=1; i<=x; i++) {
		result_int=result_int*i;
	}
	return result_int;
}

double power (double x, int y) {
	double result_int = 1.0;
	for (int i=1; i<=y; i++) {
		result_int=result_int*x;
	}
	return result_int;
}

double sin_taylor_series (double x){
	double sum_positive = 0.0;
	double sum_negative= 0.0;
	const double pi = 3.1415;

	for (int i=1; i<=1000; i+=4) {
		sum_positive = sum_positive + (power (x,i) / fact (i));
	}
	for (int i=3; i<=1000; i+=4) {
		sum_negative = sum_negative + (power (x,i) / fact (i));
	}

	return (sum_positive - sum_negative);
}
