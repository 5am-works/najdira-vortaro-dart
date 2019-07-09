import 'dart:html';

import 'dart:math';

class OkenaService {
  static final Map<String, Function(CanvasRenderingContext2D, bool, num)>
      _designiloj = {
    '_': (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.stroke();
    },
    "m": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.3);
      ctx.lineTo(0, longeco * 0.7);
      ctx.ellipse(longeco * 0.5, longeco * 0.7, longeco / 2, longeco * 0.3 + 3,
          0, pi, 2 * pi, true);
      ctx.lineTo(longeco, 0);
      ctx.stroke();
    },
    "b": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco);
      ctx.lineTo(longeco, longeco);
      ctx.lineTo(longeco, 0);
      ctx.moveTo(longeco * 0.75, 0);
      ctx.lineTo(longeco * 0.75, longeco);
      ctx.stroke();
    },
    "p": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco);
      ctx.lineTo(longeco, longeco);
      ctx.lineTo(longeco, 0);
      ctx.stroke();
    },
    "v": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco);
      ctx.lineTo(longeco, longeco);
      ctx.lineTo(longeco, longeco * 0.3);
      ctx.lineTo(longeco * 0.65, longeco * 0.3);
      ctx.moveTo(longeco * 0.75, longeco);
      ctx.lineTo(longeco * 0.75, longeco * 0.3);
      ctx.stroke();
    },
    "f": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco);
      ctx.lineTo(longeco, longeco);
      ctx.lineTo(longeco, longeco * 0.3);
      ctx.lineTo(longeco * 0.85, longeco * 0.3);
      ctx.stroke();
    },
    "n": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco * 0.3);
      ctx.ellipse(longeco * 0.5, longeco * 0.3, longeco / 2, longeco * 0.3 + 3,
          0, pi, 0, false);
      ctx.lineTo(longeco, longeco);
      ctx.stroke();
    },
    "d": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.lineTo(longeco, longeco);
      ctx.moveTo(longeco * 0.75, 0);
      ctx.lineTo(longeco * 0.75, longeco);
      ctx.stroke();
    },
    "t": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.lineTo(longeco, longeco);
      ctx.stroke();
    },
    "z": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco * 0.3);
      ctx.lineTo(longeco, longeco * 0.3);
      ctx.lineTo(longeco, longeco);
      ctx.moveTo(longeco * 0.75, longeco * 0.3);
      ctx.lineTo(longeco * 0.75, longeco);
      ctx.stroke();
    },
    "s": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco * 0.3);
      ctx.lineTo(longeco, longeco * 0.3);
      ctx.lineTo(longeco, longeco);
      ctx.stroke();
    },
    "l": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(0, longeco);
      ctx.lineTo(longeco, longeco);
      ctx.lineTo(longeco, 0);
      ctx.moveTo(longeco * 0.3, longeco);
      ctx.lineTo(longeco * 0.3, longeco * 0.4);
      ctx.stroke();
    },
    "r": (ctx, turni, longeco) {
      ctx.save();
      ctx.beginPath();
      ctx.rect(-ctx.lineWidth / 2, -ctx.lineWidth / 2, longeco + ctx.lineWidth,
          longeco + ctx.lineWidth);
      ctx.clip();
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, 0);
      ctx.lineTo(longeco, longeco);
      ctx.lineTo(longeco, 0);
      ctx.stroke();
      ctx.restore();
    },
    "ʃ": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, longeco * 0.3);
      ctx.lineTo(longeco, longeco * 0.3);
      ctx.lineTo(longeco, longeco);
      ctx.lineTo(longeco * 0.85, longeco);
      ctx.stroke();
    },
    "j": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco);
      ctx.lineTo(longeco / 2, 0);
      ctx.lineTo(longeco, longeco);
      ctx.moveTo(longeco / 2, 0);
      ctx.lineTo(longeco / 2, longeco * 0.6);
      ctx.stroke();
    },
    "g": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.lineTo(longeco * 0.85, longeco / 2);
      ctx.lineTo(longeco, longeco);
      ctx.moveTo(longeco * 0.7, 0);
      ctx.lineTo(longeco * 0.55, longeco / 2);
      ctx.lineTo(longeco * 0.7, longeco);
      ctx.stroke();
    },
    "k": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.lineTo(0, 0);
      ctx.lineTo(longeco, 0);
      ctx.lineTo(longeco * 0.7, longeco / 2);
      ctx.lineTo(longeco, longeco);
      ctx.stroke();
    },
    "w": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(0, longeco * 0.6);
      ctx.moveTo(longeco, 0);
      ctx.lineTo(3, longeco / 2);
      ctx.lineTo(longeco, longeco);
      ctx.stroke();
    },
    // Vokaloj
    "a": (ctx, turni, longeco) {
      ctx.save();
      ctx.strokeStyle = 'white';
      ctx.lineWidth += 2;
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.ellipse(longeco * 0.2, longeco * 0.8 + 1, longeco * 0.2,
          longeco * 0.2, 0, pi, 2 * pi - 1.7, true);
      ctx.stroke();

      ctx.restore();
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6 - 2);
      ctx.ellipse(longeco * 0.2, longeco * 0.8 + 1, longeco * 0.2,
          longeco * 0.2, 0, pi, 2 * pi - 1.7, true);
      ctx.stroke();
    },
    "e": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.ellipse(longeco * 0.2, longeco * 0.8 + 1, longeco * 0.2,
          longeco * 0.2, 0, pi, 2 * pi, true);
      ctx.stroke();
    },
    "i": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.ellipse(longeco * 0.2, longeco * 0.8 + 1, longeco * 0.2,
          longeco * 0.2, 0, pi, 2 * pi, true);
      ctx.stroke();
      ctx.save();
      ctx.strokeStyle = 'white';
      ctx.lineWidth += 2;
      ctx.beginPath();
      ctx.moveTo(longeco * 0.4, longeco * 0.7);
      ctx.lineTo(longeco * 0.4, longeco + 2);
      ctx.stroke();

      ctx.restore();
      ctx.beginPath();
      ctx.moveTo(longeco * 0.4, longeco * 0.7);
      ctx.lineTo(longeco * 0.4, longeco + 2);
      ctx.stroke();
    },
    "A": (ctx, turni, longeco) {
      ctx.save();
      ctx.strokeStyle = 'white';
      ctx.lineWidth += 2;
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.ellipse(longeco * 0.2, longeco * 0.8 + 1, longeco * 0.2,
          longeco * 0.2, 0, pi, 2 * pi - 1.7, true);
      ctx.stroke();

      ctx.restore();
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6 - 2);
      ctx.ellipse(longeco * 0.2, longeco * 0.8 + 1, longeco * 0.2,
          longeco * 0.2, 0, pi, 2 * pi - 1.7, true);
      ctx.stroke();

      ctx.save();
      ctx.strokeStyle = 'white';
      ctx.lineWidth += 2;
      ctx.beginPath();
      ctx.moveTo(longeco * 0.4, longeco * 0.8 + 2);
      ctx.lineTo(longeco * 0.4, longeco);
      ctx.stroke();

      ctx.restore();
      ctx.beginPath();
      ctx.moveTo(longeco * 0.4, longeco * 0.8);
      ctx.lineTo(longeco * 0.4, longeco + 2);
      ctx.stroke();
    },
    "E": (ctx, turni, longeco) {
      ctx.beginPath();
      ctx.moveTo(0, longeco * 0.6);
      ctx.ellipse(longeco * 0.2 - 3, longeco * 0.8 + 1, longeco * 0.2 - 3,
          longeco * 0.2, 0, pi, 2 * pi, true);
      ctx.stroke();
      ctx.save();
      ctx.strokeStyle = 'white';
      ctx.lineWidth += 2;
      ctx.beginPath();
      ctx.moveTo(longeco * 0.4 - 6, longeco * 0.7);
      ctx.lineTo(longeco * 0.4 - 6, longeco + 2);
      ctx.moveTo(longeco * 0.4 + 2, longeco * 0.7);
      ctx.lineTo(longeco * 0.4 + 2, longeco + 2);
      ctx.stroke();

      ctx.restore();
      ctx.beginPath();
      ctx.moveTo(longeco * 0.4 - 6, longeco * 0.7);
      ctx.lineTo(longeco * 0.4 - 6, longeco + 2);
      ctx.moveTo(longeco * 0.4 + 2, longeco * 0.7);
      ctx.lineTo(longeco * 0.4 + 2, longeco + 2);
      ctx.stroke();
    },
  };
  static final Map<String, Function(CanvasRenderingContext2D, num)>
      _vokaloMoviloj = {
    'm': mbpMovi,
    'b': mbpMovi,
    'p': mbpMovi,
    'v': vfMovi,
    'f': vfMovi,
    'l': (ctx, longeco) {
      ctx.transform(1, 0, 0, -1, 0, longeco);
      ctx.transform(1, 0, 0, 1, longeco * 0.3, 0);
    },
    'j': (ctx, longeco) {
      ctx.transform(1, 0, 0, 1, longeco * 0.5, 0);
    }
  };

  static final Map<String, String> _mallumajVokaloj = {
    'ɔ': 'a',
    'o': 'e',
    'u': 'i',
    'O': 'E',
  };

  desegni(String vorto, CanvasRenderingContext2D ctx, num longeco, num spaco) {
    if (vorto.length % 2 != 0) {
      throw Exception("La longeco de $vorto estas nevalida");
    }
    ctx.setTransform(1, 0, 0, 1, spaco, spaco + 7);
    for (int i = 0; i < vorto.length; ++i) {
      final litero = vorto[i];
      if (i % 2 == 0) {
        // Konsonanto
        final vokalo = vorto[i + 1];
        if (_mallumajVokaloj.containsKey(vokalo)) {
          ctx.save();
          if (litero == 'r') {
            ctx.transform(-1, 0, 0, -1, longeco, longeco);
          } else {
            ctx.transform(-1, 0, 0, 1, longeco, 0);
          }
        }
        _designiloj[litero](ctx, false, longeco);
      } else {
        // Vokalo
        ctx.save();
        final konsonanto = vorto[i - 1];
        if (_vokaloMoviloj.containsKey(konsonanto)) {
          _vokaloMoviloj[konsonanto](ctx, longeco);
        }
        _designiloj[_mallumajVokaloj[litero] ?? litero](ctx, false, longeco);
        ctx.restore();
        ctx.restore();
        ctx.transform(1, 0, 0, 1, longeco + spaco, 0);
      }
    }
  }

  static final Function(CanvasRenderingContext2D, num) mbpMovi =
          (ctx, longeco) {
    ctx.transform(1, 0, 0, -1, 0, longeco);
  },
      vfMovi = (ctx, longeco) {
    ctx.transform(1, 0, 0, -1, 0, longeco);
    ctx.transform(1, 0, 0, 1, 0, -longeco * 0.3);
  };
}
