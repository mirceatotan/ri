package CoffeeMachine;

sub new {
 
  my $proto = shift; 
  my $class = ref($proto) || $proto;

# se creaza o referinta 
# la structura de date goala
  my $self = {};
 
  print "$class ON.\n";

  bless $self, $class;

  $self->InitMachine();

  return $self;
}

sub InitMachine {
  my $self = shift;
 
  $self->{coffee} = 10;
  $self->{sugar} = 20;
  $self->{warm} = 0;

  print __PACKAGE__ . " Init OK.\n";
}

sub CheckWarmUp {
  my $self = shift;
  print "Checking warmup: ";
  if ($self->{warm}) {
    print "WARM\n";
  }
  else {
    print "COLD\n";
  }
  return $self->{warm};
}

sub WarmUp {
  my $self = shift;

  print "Warming Up...";
  my $timer = 5;
  while ($timer) {
    print $timer--, " ";
    sleep(1);
  }
  print " DONE.\n";
  $self->{warm} = 1;
}

return 1;
