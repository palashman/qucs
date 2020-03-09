/*
 * schematicview.cpp - implement schematic view
 *
 * Copyright (C) 2006, Michael Margraf, michael.margraf@alumni.tu-berlin.de
 * Copyright (C) 2019-2020, Guilherme Brondani Torri, guitorri@gmail.com
 *
 * This file is part of Qucs
 *
 * Qucs is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * This software is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Qucs.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#ifndef SCHEMATICVIEW_H
#define SCHEMATICVIEW_H

// maybe in another place...
#ifdef NDEBUG
// cast without overhead
#  define prechecked_cast static_cast
#else
// cast safely, for debugging purposes
#  define prechecked_cast dynamic_cast
#endif

#include "wire.h"
#include "node.h"
#include "qucsdoc.h"
#include "diagrams/diagram.h"
#include "paintings/painting.h"
#include "components/component.h"
#include "mousecursor.h"
#include "qt_compat.h"

#include <QGraphicsView>
#include <QVector>
#include <QStringList>

class SchematicScene;

class QTextStream;
class QTextEdit;
class QPlainTextEdit;
class QDragMoveEvent;
class QDropEvent;
class QDragLeaveEvent;
class QWheelEvent;
class QMouseEvent;
class QDragEnterEvent;
class QPainter;
class QUndoStack;


class SchematicView : public QGraphicsView, public QucsDoc {
  Q_OBJECT
public:
  SchematicView(QucsApp*, const QString&);
 ~SchematicView();

  void setName(const QString&);
  void setChanged(bool, bool fillStack=false, char Op='*');
  void print(QPrinter*, QPainter*, bool, bool);

  void paintInit(QPainter*, float, int, int, int, int, float FontScale_=0.0, float PrintScale=1.0);
  void paintSchToViewpainter(QPainter* p, bool printAll, bool toImage, int screenDpiX=96, int printerDpiX=300);

  float textCorr();
  void  sizeOfAll(int&, int&, int&, int&);

  void  zoomFit();
  void  zoomReset();
  void  zoomOut();
  void  zoomIn();
  void  enlargeView(int, int, int, int);

  void  switchPaintMode();

  void    becomeCurrent(bool);
  bool    undo();
  bool    redo();

  bool scrollUp(int);
  bool scrollDown(int);
  bool scrollLeft(int);
  bool scrollRight(int);

  // schematic Scene for this View
  SchematicScene *scene;

  bool symbolMode;  // true if in symbol painting mode

  // mouse decoration to reflect currently selected mode
  MouseCursor *mouseCursor;

  int ViewX1, ViewY1, ViewX2, ViewY2;  // size of the document area
  int UsedX1, UsedY1, UsedX2, UsedY2;  // document area used by elements

  // Two of those data sets are needed for Schematic and for symbol.
  // Which one is in "tmp..." depends on "symbolMode".
  float tmpScale;
  int tmpViewX1, tmpViewY1, tmpViewX2, tmpViewY2;
  int tmpUsedX1, tmpUsedY1, tmpUsedX2, tmpUsedY2;

  QUndoStack *undoStack;

  bool load();
  int save();

signals:
  void signalCursorPosChanged(int, int);
  void signalUndoState(bool);
  void signalRedoState(bool);
  void signalFileChanged(bool);

protected:
  // overloaded function to get actions of user
  void mouseMoveEvent(QMouseEvent*);
  void mousePressEvent(QMouseEvent*);
  void mouseReleaseEvent(QMouseEvent*);
  void mouseDoubleClickEvent(QMouseEvent*);
  void contentsWheelEvent(QWheelEvent*);
  void contentsDropEvent(QDropEvent*);
  void contentsDragEnterEvent(QDragEnterEvent*);
  void contentsDragLeaveEvent(QDragLeaveEvent*);
  void contentsDragMoveEvent(QDragMoveEvent*);

protected slots:
  void slotScrollUp();
  void slotScrollDown();
  void slotScrollLeft();
  void slotScrollRight();

private:
  bool dragIsOkay;

  //! \brief Auxiliary pan variables
  bool panMode;
  QPointF panStartPosition;

};

#endif