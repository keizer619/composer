package ballerina.math;

@Description {value:"The ratio of the circumference of a circle to its diameter"}
public const float PI = 3.141592653589793;

@Description {value:"The base of the natural logarithms"}
public const float E = 2.718281828459045;

@Description {value:"Returns Euler's number, that is 'e' raised to the power of exponent"}
@Param {value:"val: exponent value to raise"}
@Return {value:"float: exp value"}
public native function exp (float val) (float);

@Description {value:"Returns the value of the 'a' raised to the power of 'b'"}
@Param {value:"a: the base value"}
@Param {value:"b: the exponent value"}
@Return {value:"float: result value"}
public native function pow (float a, float b) (float);

@Description {value:"Returns a random number between 0.0 and 1.0"}
@Return {value:"float: random value"}
public native function random () (float);

@Description {value:"Returns a random number between given start(inclusive) and end(exclusive) values"}
@Param {value:"start: range start value"}
@Param {value:"end: range end value"}
@Return {value:"float: random value"}
public native function randomInRange (int start, int end) (int);

@Description {value:"Returns rounded positive square root of the given value"}
@Param {value:"val: value to get square root"}
@Return {value:"float: square root value"}
public native function sqrt (float val) (float);

@Description {value:"Returns the absolute value of a float value"}
@Param {value:"val: value to get absolute value"}
@Return {value:"float: absolute value"}
public native function absFloat (float val) (float);

@Description {value:"Returns the absolute value of an int value"}
@Param {value:"val: value to get the absolute value"}
@Return {value:"int: absolute value"}
public native function absInt (int val) (int);

@Description {value:"Returns the arc cosine of a value; the returned angle is in the range 0.0 through pi"}
@Param {value:"val: value to get the arc cosine"}
@Return {value:"float: arc cosine value"}
public native function acos (float val) (float);

@Description {value:"Returns the arc sine of a value"}
@Param {value:"val: value to get the arc sine"}
@Return {value:"float: arc sine value"}
public native function asin (float val) (float);

@Description {value:"Returns the arc tangent of a value"}
@Param {value:"val: value to get the arc tangent"}
@Return {value:"float: arc tangent value"}
public native function atan (float val) (float);

@Description {value:"Returns the angle theta from the conversion of rectangular coordinates (a, b) to polar
coordinates (r, theta)"}
@Param {value:"a: the ordinate coordinate"}
@Param {value:"b: the abscissa coordinate"}
@Return {value:"float: the result"}
public native function atan2 (float a, float b) (float);

@Description {value:"Returns the cube root of a float value"}
@Param {value:"val: value to get the cube root"}
@Return {value:"float: cube root value"}
public native function cbrt (float val) (float);

@Description {value:"Returns the smallest (closest to negative infinity) double value that is greater than or
equal to the argument and is equal to a mathematical integer"}
@Param {value:"val: value to get the ceil"}
@Return {value:"float: the result"}
public native function ceil (float val) (float);

@Description {value:"Returns the first floating-point argument with the sign of the second floating-point
argument"}
@Param {value:"magnitude: the parameter providing the magnitude of the result"}
@Param {value:"sign: the parameter providing the sign of the result"}
@Return {value:"float: the result"}
public native function copySign (float a, float b) (float);

@Description {value:"Returns the trigonometric cosine of an angle"}
@Param {value:"val: value to get the trigonometric cosine"}
@Return {value:"float: the result"}
public native function cos (float val) (float);

@Description {value:"Returns the hyperbolic cosine of a float value"}
@Param {value:"val: The number whose hyperbolic cosine is to be returned"}
@Return {value:"float: The hyperbolic cosine of given float value"}
public native function cosh (float val) (float);

@Description {value:"Returns (e to the power of x) -1"}
@Param {value:"val: The exponent to raise e to in the computation"}
@Return {value:"float: the result"}
public native function expm1 (float val) (float);

@Description {value:"Returns the largest (closest to positive infinity) float value that is less than or equal
to the argument and is equal to a mathematical integer"}
@Param {value:"val: a float value"}
@Return {value:"float: the result"}
public native function floor (float val) (float);

@Description {value:"Returns the largest (closest to positive infinity) int value that is less than or equal
to the algebraic quotient"}
@Param {value:"a: the dividend"}
@Param {value:"b: the divisor"}
@Return {value:"int: the result"}
public native function floorDiv (int a, int b) (int);

@Description {value:"Returns the floor modulus of the long arguments"}
@Param {value:"a: the dividend"}
@Param {value:"b: the divisor"}
@Return {value:"int: the result"}
public native function floorMod (int a, int b) (int);

@Description {value:"Returns the unbiased exponent used in the representation of a float"}
@Param {value:"val: float value"}
@Return {value:"int: the unbiased exponent of the argument"}
public native function getExponent (float val) (int);

@Description {value:"Returns sqrt(a squared +b squared) without intermediate overflow or underflow"}
@Param {value:"a: float value"}
@Param {value:"b: float value"}
@Return {value:"float: the result"}
public native function hypot (float a, float b) (float);

@Description {value:"Computes the remainder operation on two arguments as prescribed by the IEEE 754 standard"}
@Param {value:"a: the dividend"}
@Param {value:"b: the divisor"}
@Return {value:"float: the remainder when a is divided by b"}
public native function IEEEremainder (float a, float b) (float);

@Description {value:"Returns the natural logarithm (base e) of a float value"}
@Param {value:"val: a float value"}
@Return {value:"float: the result"}
public native function log (float val) (float);

@Description {value:"Returns the base 10 logarithm of a float value"}
@Param {value:"val: a float value"}
@Return {value:"float: the base 10 logarithm of a given float value"}
public native function log10 (float val) (float);

@Description {value:"Returns the natural logarithm of the sum of the argument and 1"}
@Param {value:"val: a float value"}
@Return {value:"float: the natural log of x + 1"}
public native function log1p (float val) (float);

@Description {value:"Returns the negation of the argument"}
@Param {value:"val: the value to negate"}
@Return {value:"int: the result"}
public native function negateExact (int val) (int);

@Description {value:"Returns the floating-point number adjacent to the first argument in the direction of the
second argument"}
@Param {value:"a: starting floating-point value"}
@Param {value:"b: value indicating which of start's neighbors or start should be returned"}
@Return {value:"float: the result"}
public native function nextAfter (float a, float b) (float);

@Description {value:"Returns the adjacent floating-point value closer to negative infinity"}
@Param {value:"val: starting floating-point value"}
@Return {value:"float: the result"}
public native function nextDown (float val) (float);

@Description {value:"Returns the adjacent floating-point value closer to positive infinity"}
@Param {value:"val: starting floating-point value"}
@Return {value:"float: the result"}
public native function nextUp (float val) (float);

@Description {value:"Returns the double value that is closest in value to the argument and is equal to a
mathematical integer"}
@Param {value:"val: a float value"}
@Return {value:"float: the result"}
public native function rint (float val) (float);

@Description {value:"Returns the closest int to the argument, with ties rounding to positive infinity"}
@Param {value:"val: a floating-point value to be rounded to an integer"}
@Return {value:"int: the value of the argument rounded to the nearest int value"}
public native function round (float val) (int);

@Description {value:"Returns a × (2 to the power of scaleFactor) rounded as if performed by a single correctly
rounded floating-point  multiply to a member of the float value set"}
@Param {value:"a: number to be scaled by a power of two"}
@Param {value:"scaleFactor: power of 2 used to scale a"}
@Return {value:"float: the result"}
public native function scalb (float a, int b) (float);

@Description {value:"Returns the signum function of the argument"}
@Param {value:"val: the floating-point value whose signum is to be returned"}
@Return {value:"float: the signum function of the argument"}
public native function signum (float val) (float);

@Description {value:"Returns the trigonometric sine of an angle"}
@Param {value:"val: an angle, in radians"}
@Return {value:"float: the sine of the argument"}
public native function sin (float val) (float);

@Description {value:"Returns the hyperbolic sine of a float value"}
@Param {value:"val: the number whose hyperbolic sine is to be returned"}
@Return {value:"float: the hyperbolic sine of a given float"}
public native function sinh (float val) (float);

@Description {value:"Returns the trigonometric tangent of an angle"}
@Param {value:"val: an angle, in radians"}
@Return {value:"float: the tangent of the argument"}
public native function tan (float val) (float);

@Description {value:"Returns the hyperbolic tangent of a double value"}
@Param {value:"val: the number whose hyperbolic tangent is to be returned"}
@Return {value:"float: the hyperbolic tangent of x"}
public native function tanh (float val) (float);

@Description {value:"Converts an angle measured in radians to an approximately equivalent angle measured in
degrees"}
@Param {value:"val: an angle, in radians"}
@Return {value:"float: the measurement of the angle angrad in degrees"}
public native function toDegrees (float val) (float);

@Description {value:"Converts an angle measured in degrees to an approximately equivalent angle measured in
radians"}
@Param {value:"val: an angle, in degrees"}
@Return {value:"float: the measurement of the angle angdeg in radians"}
public native function toRadians (float val) (float);

@Description {value:"Returns the size of an ulp of the argument"}
@Param {value:"val: the floating-point value whose ulp is to be returned"}
@Return {value:"float: the size of an ulp of the argument"}
public native function ulp (float val) (float);
