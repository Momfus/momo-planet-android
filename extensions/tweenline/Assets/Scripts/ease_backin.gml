#define ease_backin
///ease_bouncein(progress [, overshot = 1.70158])
/*
Check ease_FAQ to learn about how to change the easing arguments (moddifiers) 
*/
var OVERSHOT = 1.70158;
if (argument_count>1) {
    if (is_real(argument[1])) {
        OVERSHOT = argument[1];
    }
}
var p = argument[0];
return p * p * ((OVERSHOT + 1) * p - OVERSHOT);




#define ease_backout
///ease_bounceout(progress [, overshot = 1.70158])
/*
Check ease_FAQ to learn about how to change the easing arguments (moddifiers) 
*/
var OVERSHOT = 1.70158; 
if (argument_count>1) {
    if (is_real(argument[1])) {
        OVERSHOT = argument[1];
    }
}
var p = argument[0] -1;
return (p * p * ((OVERSHOT + 1) * p + OVERSHOT) + 1);




#define ease_backinout
/// ease_bounceinout(progress [, overshot = 1.70158])
/*
Check ease_FAQ to learn about how to change the easing arguments (moddifiers) 
*/
var OVERSHOT = 1.70158;
if (argument_count>1) {
    if (is_real(argument[1])) {
        OVERSHOT = argument[1];
    }
}
var _p2 = OVERSHOT * 1.525;
var p = argument[0]+argument[0];
if (p < 1) {
    return .5 * p * p * ((_p2 + 1) * p - _p2);
} 
p -= 2;
return .5 * (p * p * ((_p2 + 1) * p + _p2) + 2);
