import random 

heads = 0
tails = 0

for turn in range(1,5001):
	random_num = random.randint(0,1)
	if random_num == 0:
		heads += 1
		print "Attempt #"+ str(turn) +": Throwing a coin... It's a head! ... Got "+str(heads)+ " head(s) so far and "+str(tails)+" tail(s) so far"
	else:
		tails += 1
		print "Attempt #"+ str(turn) +": Throwing a coin... It's a tails! ... Got "+str(heads)+ " head(s) so far and "+str(tails)+" tail(s) so far"

