unit GeckoStringNG;

interface


{type
  TGeckoString = class
  private
    FString:String;
  public
    class operator Add(a, b: TGeckoString): TGeckoString;
    class operator Implicit(Value : String) : TGeckoString;
    class operator Implicit(Value : WideString) : TGeckoString;
    class operator Implicit(Value : TGeckoString) : WideString;
  end;  }
//type


implementation

   {TMyClass = class
     class operator Add(a, b: TMyClass): TMyClass;      // TMyClass 型の 2 つのオペランドの加算
     class operator Subtract(a, b: TMyClass): TMyclass; // TMyClass 型の除算
     class operator Implicit(a: Integer): TMyClass;     // Integer から TMyClass 型への暗黙の変換
     class operator Implicit(a: TMyClass): Integer;     // TMyClass 型から Integer への暗黙の変換
     class operator Explicit(a: Double): TMyClass;      // Double から TMyClass への明示的変換
   end;}

// Add の実装の例
{
class operator TMyClass.Add(a, b: TMyClass): TMyClass;
begin
   // ...
end;}
  {
var
x, y, b: TMyClass;
begin
   x := 12;      // Integer からの暗黙の変換
   y := x + x;   // TMyClass.Add(a, b: TMyClass) の呼び出し：TMyClass
   b := b + 100; // TMyClass.Add(b, TMyClass.Implicit(100)) の呼び出し
end;}



end.
