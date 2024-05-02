package net.blaxstar.termini.commands
{
  public class ArithmeticAddCommand extends TerminalCommand {
    
    public function ArithmeticAddCommand() {
      super("add", add);
    }

    private function add(...args):Number {
      var sum:Number = 0;
      for (var i:uint = 0;i < args.length;i++) {
        var parsedNumber:Number = parseFloat(args[i]);
        if (isNaN(parsedNumber))
          continue;
        else
          sum = sum + parsedNumber;
      }
      return sum;
    }
  }
}