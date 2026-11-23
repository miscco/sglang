/// \file cub.cuh
/// \brief CUB direct block and warp loads and stores, from hipCUB on ROCm.
///
/// The JIT build does not run hipify, so ROCm builds see hipCUB under the
/// `cub` namespace. Kept out of utils.cuh, which sits in nearly every
/// kernel's dependency closure that the build cache is keyed on.

#pragma once
#ifndef USE_ROCM
#include <cub/block/block_load.cuh>
#include <cub/block/block_store.cuh>
#include <cub/warp/warp_load.cuh>
#include <cub/warp/warp_store.cuh>
#else
#include <hipcub/hipcub.hpp>
namespace cub = hipcub;
#endif
