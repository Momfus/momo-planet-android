#define ease_quintin
///ease_quartin(progress)

return (argument0*argument0*argument0*argument0*argument0);

#define ease_quintout
///ease_cubicout(progress)
argument0=1-argument0;
return 1-(argument0*argument0*argument0*argument0*argument0);

#define ease_quintinout
/// ease_quartinout(progress)

argument0+=argument0;
if (argument0 < 1) {return (argument0*argument0*argument0)*.5;}
argument0=2-argument0;
return (2-(argument0*argument0*argument0))*.5;