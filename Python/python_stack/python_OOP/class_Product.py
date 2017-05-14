class Product(object):
  def __init__(self, price, item_name, weight, brand, cost, status="for sale"):
    self.price = price
    self.item_name = item_name
    self.weight = weight
    self.brand = brand
    self.cost = cost
    self.status = status

  def sell(self):
    self.status = "sold"
    return self

  def add_tax(self, tax_rate):
    return (1 + tax_rate)*self.price

  def item_return(self, reason):
    if reason == "defective":
      self.status = "defective"
      self.price = 0
    if reason == "in box":  
      self.status = "for sale"
    if reason == "open box":
      self.status = "used"
      self.price = .8 * price
    return self

  def display_info(self):
    print "price:" + str(self.price) + "\nitem_name:" + self.item_name + " weight:" +  self.weight + " brand:" + self.brand + " cost:" + str(self.cost) + " status:" + self.status

    return self

p = Product(100, "watch", "10oz", "kenneth cole", 50)
p.sell().display_info().add_tax(.02)    