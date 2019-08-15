import spasm.types;
import spasm.bindings.audio : AudioParam;
extern (C):

void spasm_removeObject() {}
Handle spasm_add__object() { return 0; }
string getEventString(string prop) { return "dummy"; }
bool getEventBool(string prop) { return false; }
int getEventInt(string prop) { return 0; }
uint Maplike_string_Handle_size(Handle) { return 0; }
void Maplike_string_Handle_clear(Handle) {}
void Maplike_string_Handle_delete(Handle, string key) {}
Handle Maplike_string_Handle_entries(Handle) { return 0; }
void Maplike_string_Handle_forEach(Handle, void delegate(string, Handle, Handle)) {}
AudioParam Maplike_string_Handle_get(Handle, string) { return AudioParam(0); }
bool Maplike_string_Handle_has(Handle, string) { return false; }
Handle Maplike_string_Handle_keys(Handle) { return 0; }
void Maplike_string_Handle_set(Handle, string key, Handle value) {}
Handle Maplike_string_Handle_values(Handle) { return 0; }
Handle Int8Array_Create(const byte[]) { return 0; }
Handle Int32Array_Create(const int[]) { return 0; }
Handle Uint8Array_Create(const ubyte[]) { return 0; }
Handle Float32Array_Create(const float[]) { return 0; }
Handle DataView_Create(const ubyte[]) { return 0; }
void main() {
  import spasm.spa;
  import spasm.rt.memory;
  struct Dummy {}
  mixin Spa!Dummy;
  auto mem = allocator.make!(void[4]);
  _start(cast(uint)mem.length);
  auto i = cast(int[])mem;
  i[1] = 3;
}
