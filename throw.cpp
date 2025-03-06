
/*
 * This class is external so things have to be externally linked.
 */
class Foo {

public:
  void staticDispatch(int i);

  virtual void dynamicDispatch(int i);

  virtual void secondDynamicDispatch(int i);

  Foo(int i);
  ~Foo();
};

class Bar : public Foo {
public:
  void staticDispatch(int i);
  ~Bar();
  Bar(int i);
};


void throwTest(){
  throw Foo(42);
}

void catchTest(){
  try {
    Foo(3141);
  } catch (Foo &f){
    f.staticDispatch(1337);
  }
}
