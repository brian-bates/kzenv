# Copyright (C) 2019-2020 Nicolas Lamirault <nicolas.lamirault@gmail.com>

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Kzenv < Formula
  desc "Kustomize version manager inspired by kzenv"
  homepage "https://github.com/nlamirault/kzenv"
  url "https://github.com/nlamirault/kzenv/archive/v1.0.0.tar.gz"
  sha256 "0155ee38bbb1c42d6bc9dfc47aa09ef7e0c0c0cf1bbaf8a696ef08354a6d3232"
  head "https://github.com/nlamirault/kzenv.git"

  bottle :unneeded

  conflicts_with "kustomize", :because => "kzenv symlinks kustomize binaries"

  def install
    prefix.install ["bin", "libexec"]
  end

  test do
    system "#{bin}/kzenv list-remote"
  end
end
