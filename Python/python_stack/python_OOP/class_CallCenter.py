class CallCenter(object):
  def __init__(self):
    self.calls = []

  def queue_size(self):
    return len(self.calls)

  def add(self,call):
    self.calls.append(call)
    return self

  def pop_front(self):
    return self.calls.pop(0)

  def info(self):
    for c in self.calls:
      print c.caller_name
      print c.caller_phone_num
    print self.queue_size()  

class Call(object):
  def __init__(self, unique_id, caller_name, caller_phone_num, time, reason):
    self.unique_id = unique_id
    self.caller_name= caller_name
    self.caller_phone_num = caller_phone_num
    self.time  = time
    self.reason = reason

  def display(self):
    print self.unique_id
    print self.caller_name
    print self.caller_phone_num
    print self.time
    print self.reason

c = Call(1,"shane", "111", "3:05pm", "for fun")
c2 = Call(1,"shane2", "1112", "3:05pm", "for fun")
c3 = Call(1,"shane3", "1113", "3:05pm", "for fun")
# c.display()
cc = CallCenter()
cc.add(c)
cc.add(c2)
cc.add(c3)
cc.pop_front()
cc.info()