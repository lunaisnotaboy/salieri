#include "salieri.h"

VALUE rb_mSalieri;

void Init_salieri(void) {
  rb_mSalieri = rb_define_module("Salieri");
}
