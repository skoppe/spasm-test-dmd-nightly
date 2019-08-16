import spasm.types;
import spasm.spa;
import spasm.rt.memory;

extern (C) void main() {
  struct Dummy {}
  mixin Spa!Dummy;
  auto mem = allocator.make!(void[4]);
  _start(cast(uint)mem.length);
  auto i = cast(int[])mem;
  i[1] = 3;
}
