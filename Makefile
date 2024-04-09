# 변수 설정
cc = g++                  # C++ 컴파일러
flags = -g              # C++ 컴파일러 플래그, 여기서는 디버깅 정보 포함
heads = LinkedList.h Stack.h    # 헤더 파일
src = main.cpp                # 소스 파일
objs = $(src:.cpp=.o)         # 객체 파일

tar = a.out
all: $(tar)

# 타겟과 의존성
$(tar): $(objs) $(heads)
	$(cc) $(flags) -o $@ $(objs)

# 정리 작업
clean:
	rm -rf $(objs) $(tar)	
# 파일이름이 특이한 경우처리하기
.PHONY: clean
# 주석:
# - $@ 은 현재 타겟의 이름을 나타냅니다.
# - $(objs)는 main.o와 같은 객체 파일 목록을 나타냅니다.
# - $(cc)는 g++ 또는 다른 C++ 컴파일러를 나타냅니다.
# - $(flags)는 컴파일러에게 전달될 추가 플래그들을 나타냅니다.
