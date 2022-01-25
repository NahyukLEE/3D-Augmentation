# 3D-Augmentation
used for personal use

## Advise
- (22.01.06) SOTA라고 주장하는 papers의 reported performance는 과연 network 구조가 우수해서일까, 각기 다른 data augmentation의 효과를 본 것일까? + 어떠한 Augmentation이 좋은 Augmentation인가? + 우리만의 좋은 Augmentation을 고안하자.
- (22.01.10) Self-supervised representation learning에서 point clouds의 representation을 학습하는데 주로 random crop과 random rotation이 사용된다.
  - 뚝심있게 주제를 밀고 나가자. Random rotation과 crop은 representation 학습에 좋은 효과를 보였던 예시일 뿐. 갑자기 Self-supervised representation learning에 대해서 고민하다가 시간을 낭비해버렸다..
- (22.01.19) Point-based approach는 point clouds의 density에 민감하게 반응한다는 특징을 가진다. Point clouds의 Sampling method를 연구해보는 것은 어떨까?
  - Augmentation과 Sampling을 모두 고려해볼 수 있을 것 같음.
    - Augmentation:
    - Sampling: ModelNet과 같은 high density dataset은 sampling이 큰 영향을 끼칠 것이라고는 생각이 안되지만, SemanticKITTI와 같은 라이다 센서 기반의 scene dataset은 영향을 크게 미칠 수 있음.
- (22.01.19) Short zoom meeting with *Hansheng*.
  - **Discuss about whether the ongoing experiments are meaningful:** It is too difficult to find the optimal parameter value for each augmentation, and needs numerous experiments to find good augmentation combination sets. In addition, even if good augmentation combinations are found, it remains to be seen whether this can be commonly applied to all models(methods). So we can stop these experiments and use results for new type of experiments.
  - **So what experiment can we conduct now?:** In our docs, Nahyuk is summarizing some models that have been cited a lot in ModelNet40 Classification. And each model has an official code(github) so we can easily use them. It is required to compare how the performance of each 11 models varies compared to the reported OA for several experimental sets that performed well, starting with no_aug.
    - **Hypothesis:** If we don’t use augmentations presented in each paper, the performance is expected to be decreased. If so, it may be possible to compare the result of pure models’ performance excluding augmentation.
  - We can consider both augmentation and sampling methods, which are discussed on slack now.
  - https://arxiv.org/abs/1812.01187: Hansheng shared this paper, and confirms that he wants to take this concept to 3D. This paper from CVPR 2019 summarizes training procedure refinements, such as changes in data augmentations and optimization methods on 2D image classification task. It’s also from highly reputed scientist Mu Li and there is no similar work in 3D. Since we’re doing a lot of experiments on 3D and we have a good codebase, we can also try to find the way to apply tricks to 3D tasks on several models (point-based, voxel-based or transformer-related).
- (22.01.20) Irregular 3D point clouds에 대한 현재 SOTA 모델들의 성능이 어떠한가? 우리는 ModelNet40 v2와 같은 데이터셋(Irregular dataset)을 만들어 배포하고, 현재의 각 SOTA 모델의 성능이 좋지 않음을 확인한 후, 우리만의 새로운 모델을 제시할 수 있다. 이 때, 이에 맞는 augmentation과 sampling method를 제안할 수도 있다.
  - TO DO 1: augmentation이 적용되지 않을 때의 3D shape classification 모델의 성능을 비교분석
  - TO DO 2: Irregular dataset을 제작한 후, 3D shape classification 모델의 성능을 비교분석
## Task
- 1st~2nd week: Point Transformer와 MinkowskiNet을 이용하여 여러 data augmentation을 실험
- 3rd week: 
  - (22.01.19, 21:00-21:30 KST) Zoom Meeting with Hansheng 
    - 현재 진행 중인 실험이 과연 의미가 있을까에 대한 의문을 제기함. 각 augmentation의 최적 파라미터 값을 찾는 것도 불가능하고, 좋은 augmentation 조합을 찾기 위해선 수많은 실험이 필요할 것임. 또한, 좋은 augmentation 조합을 찾더라도 이것이 모든 model에 대하여 공통적으로 적용될 수 있을지도 미지수임.
    - 그렇다면 우리가 지금 진행할 수 있는 실험은?: Docs에 ModelNet40 Classification에서 많이 인용되었던 11개의 모델을 정리해놓았음. 각 모델들은 official code를 가지고 있으므로, no_aug부터 시작하여 성능이 좋았던 여러 실험 조합에 대해 각 11개의 모델의 성능이 reported OA와 비교하였을 때 어떻게 달라지는지 비교해보는 실험이 필요함.
      - 가설: 각 논문에서 제시한 data augmentation을 적용하지 않을 경우 성능이 떨어질 것으로 예상됨. 그렇다면 augmentation을 배제한 실제 모델 구조의 성능들을 비교할 수도 있을 것임.
    - https://arxiv.org/abs/2106.04779: Hansheng이 보내준 논문으로, 이러한 concept을 3D에 가져가고 싶다는 의견을 확인
  
