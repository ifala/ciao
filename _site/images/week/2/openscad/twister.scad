
module cubos()

cube([84,84,84] ,center = true);

module cilindri()
{
cylinder (h = 120, r=35, center = true, $fn=100);
rotate ([90,0,0]) cylinder (h = 120, r=35, center = true, $fn=100);
rotate ([0,90,0]) cylinder (h = 120, r=35, center = true, $fn=100);
}
