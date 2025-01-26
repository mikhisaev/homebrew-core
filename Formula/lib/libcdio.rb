class Libcdio < Formula
  desc "Compact Disc Input and Control Library"
  homepage "https://savannah.gnu.org/projects/libcdio/"
  url "https://github.com/libcdio/libcdio/releases/download/2.2.0/libcdio-2.2.0.tar.gz"
  sha256 "1b6c58137f71721ddb78773432d26252ee6500d92d227d4c4892631c30ea7abb"
  license "GPL-3.0-or-later"

  bottle do
    sha256 cellar: :any,                 arm64_sequoia:  "8d4d5bca1d7601b0abf006f1012cc188c1a01dfddfce5f991afffb2e50ec41bd"
    sha256 cellar: :any,                 arm64_sonoma:   "ca64fa34030dc416bc1e3d40e6d74037ae575f3890fc2fff439ebe96e8a00218"
    sha256 cellar: :any,                 arm64_ventura:  "118cf68c27ed81b7b99dde4419ba1fb8c6734568face2b741c1aeefa1a567cf1"
    sha256 cellar: :any,                 arm64_monterey: "1a494adcac50f09c217499a52a3bc585164e31bc655208f9d1239599b6687c61"
    sha256 cellar: :any,                 arm64_big_sur:  "48111a6c9c6f82aeafae559a73aa8acb1c33eb12f71e059a5d6a4bcdab846206"
    sha256 cellar: :any,                 sonoma:         "8bf3409be367c02d2af4846ad4c515919808f1c2ce1811a51ae71b7ba3f6490e"
    sha256 cellar: :any,                 ventura:        "06bfca059c6f5e949f8e45ac6c218b13df8ec4e3efa9720f4a16c3f87203820f"
    sha256 cellar: :any,                 monterey:       "bedfea3e35f4b1a7fa77ee2f8da00fb603e012b9be281a449b924e9487a5fd18"
    sha256 cellar: :any,                 big_sur:        "d8bddd24c6d4686f77bd507fdb3380ce6acd3b3f799188e8961d1feeb269c422"
    sha256 cellar: :any,                 catalina:       "3ec17ce98e129db74cb883941e429286b9ab762c740dcb6ee8c7ff077d6e3304"
    sha256 cellar: :any,                 mojave:         "55014a60373e44384aa7f797c613ccd5289c55d759c3521b7e5d6819ff54b2ac"
    sha256 cellar: :any,                 high_sierra:    "32604fb219cc4e59e5eb1e0937b320edfacf31d97f04b9a5fbfcd4354a6a56d0"
    sha256 cellar: :any,                 sierra:         "61095f7c4888b1c0e022ec9eb314fe389feae1eb030d65e7d91512515528e439"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "c87bf684fc0785e0b70ce4ff982625326e65f0e79fdbe528693a81f979e12253"
  end

  depends_on "pkgconf" => :build

  def install
    system "./configure", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cd-info -v", 1)
  end
end
