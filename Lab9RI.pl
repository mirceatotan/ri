# vezi lista
# de variabile speciale
# de la sfarsit
$| = 1;
use lib ".";
use CoffeeMachine;
use Data::Dumper;

my $cm = new CoffeeMachine;

#print Dumper($cm);

if (not $cm->CheckWarmUp) {
  $cm->WarmUp();
}

#print Dumper($cm);

$cm->CheckWarmUp
