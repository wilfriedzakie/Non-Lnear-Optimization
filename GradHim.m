function[vec]=GradHim(r)
vec(1)=4*r(1)*(r(1)^2+r(2)-11)+2*(r(1)+r(2)^2-7);
vec(2)=2*(r(1)^2+r(2)-11)+4*r(2)*(r(1)+r(2)^2-7);
end

