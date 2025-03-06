
/*
 * This class is external so things have to be externally linked.
 */
class Foo {

public:
  void staticDispatch(int i);

  virtual void dynamicDispatch(int i);

  virtual void secondDynamicDispatch(int i);
};

class Bar : public Foo {
public:
  void staticDispatch(int i);

};

/*
 * And likewise this does a static typed foo pointer, not
 * a dynamic typed pointer...
 */

Foo * make_foo();

void dispatchTest(){
  auto f = make_foo();
  f->staticDispatch(42);
  ((Bar *) f)->staticDispatch(64);
  f->dynamicDispatch(1337);
  f->secondDynamicDispatch(3141);

  
}
