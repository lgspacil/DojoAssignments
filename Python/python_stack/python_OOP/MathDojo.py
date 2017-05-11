class MathDojo(object):
	"""docstring for MathDojo"""
	def __init__(self):
		self.result = 0

	def add(self,  *args):
		# val1 = 0
		# val2 = 0
		# if type(num1) == list:
		# 	val1 += sum(num1)
		# else:
		# 	val1 += num1

		# if type(num2) == list:
		# 	val2 += sum(num2)
		# else:
		# 	val2 += num2

		# self.result += val1 + val2
		for num in args:
			if type(num) == list:
				self.result += sum(num)
			else:
				self.result += num

		return self

	def subtract(self, *args):
		sub_result = 0
		for num in args:
			if type(num) == list:
				sub_result += sum(num)
			else:
				sub_result += num

		self.result -= sub_result
		return self


md = MathDojo().add([1],3,4).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract(2, [2,3], [1.1, 2.3]).result
cd = MathDojo().add(2).add(2, 5).subtract(3, 2).result

print cd