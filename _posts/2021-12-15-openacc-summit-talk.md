---
layout: post
title:  "OpenACC Summit 2021"
date:   2021-12-15 14:34:00 -0400
author: wyphan
categories: logfile talk
---

## OpenACC Summit 2021

During the [OpenACC Annual Summit 2021][openacc-summit], I and [Prof. Lenore R. Mullin][lenore-linkedin] gave an invited talk titled "A Transformation--Based Approach for the Design of Parallel/Distributed Scientific Software: the FFT".

We presented a brief summary of Prof. Mullin's Mathematics of Arrays (MoA) theory and our ongoing work on porting the OpenMP version of her Fast Fourier Transform (FFT) algorithm to the [Cori-GPU][cori-gpu] partition at NERSC using OpenACC. The complete FFT algorithm and code is described in an [arXiv preprint][rosenkrantz] by Rosenkrantz *et al.* (2008).

The complete [recording](https://www.youtube.com/watch?v=kwqCteNqQfo) has been uploaded to the official OpenACC YouTube Channel, and the slides for the presentation can be downloaded from the OpenACC Annual Summit 2021 [event page][openacc-summit].

[openacc-summit]: https://www.openacc.org/events/openacc-summit-2021
[lenore-linkedin]: https://www.linkedin.com/in/lenore-mullin-268b0a13
[cori-gpu]: https://docs-dev.nersc.gov/cgpu/
[rosenkrantz]: https://arxiv.org/abs/0811.2535

---

last edited: Dec 15, 2021 (WYP) | [home]({{ site.url }})
