using Base.Test
using Einsum

A = zeros(5,6,7);
X = randn(5,2);
Y = randn(6,2);
Z = randn(7,2);

@einsum A[i,j,k] = X[i,r]*Y[j,r]*Z[k,r]

# for i = 1:5
# 	for j = 1:6
# 		for k = 1:7
# 			s = 0
# 			for r = 1:2
# 				s += X[i,r]*Y[j,r]*Z[k,r]
# 			end
# 			@test A[i,j,k] == s
# 		end
# 	end
# end
