/***************************************************************************
    copyright            : (C) 2020 Felix Salfelder
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 3 of the License, or     *
 *   (at your option) any later version.                                   *
 *                                                                         *
 ***************************************************************************/

#ifndef QUCS_SCHEMATIC_ACTION
#define QUCS_SCHEMATIC_ACTION
/*--------------------------------------------------------------------------*/
#include "mouseactions.h"
#include <QUndoCommand> // really?
/*--------------------------------------------------------------------------*/
class SchematicDoc;
/*--------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------*/
// merge into scene altogether?
class SchematicActions : public MouseActions{
public:
	explicit SchematicActions(SchematicDoc& d);
	~SchematicActions();

private: // MouseActions
	// void handle(QEvent*) override;

protected: // Doc stuff
	SchematicDoc* doc(); // TODO: scene!!
	SchematicScene const* scene()const;
	void updateViewport();
	QPoint snapToGrid(QPointF const&p) const{
		return scene()->snapToGrid(p);
	}

public: // actions... private?
	     // not yet. still toggled from outside
	MouseAction* maDelete;
	MouseAction* maSelect;
	MouseAction* maWire;
	MouseAction* maMirror;
	MouseAction* maActivate;
	MouseAction* maRotate;
	MouseAction* maOnGrid;
	MouseAction* maMirrorXaxis;
	MouseAction* maMirrorYaxis;
	MouseAction* maInsertGround;
	MouseAction* maInsertElement;
	MouseAction* maInsertPort;
	MouseAction* maZoomIn;
	// MouseAction* maZoomOut; // not a mouseaction
};
/*--------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------*/
// edit a schematic add/delete/alter
class SchematicEdit : public QUndoCommand {
public:
	typedef std::list<ElementGraphics*> list_t;
	struct swap_t{
		swap_t(ElementGraphics* gfx, Element* elt)
			: _gfx(gfx), _elt(elt) {}
		ElementGraphics* _gfx;
		Element* _elt;
		~swap_t(){
			delete _elt;
		}
	};
protected:
	explicit SchematicEdit(SchematicScene& s)
	  : QUndoCommand(), _first(true), _scn(s) {}
	SchematicEdit(SchematicEdit const&) = delete;

	template<class IT>
	void qDelete(IT const& deletelist) {
		for(auto i : deletelist){ untested();
			// ++k; // TODO: set label
			if(auto eg=dynamic_cast<ElementGraphics*>(i)){ untested();
				qDelete(eg);
			}else{ untested();
				unreachable(); // really? use prechecked_cast then.
			}
		}
	}
	void qDelete(ElementGraphics* eg);
	template<class IT>
	void qInsert(IT const& deletelist) {
		for(auto i : deletelist){ untested();
			// ++k; // TODO: set label
			if(auto eg=dynamic_cast<ElementGraphics*>(i)){ untested();
				qInsert(eg);
			}else{ untested();
				unreachable(); // really? use prechecked_cast then.
			}
		}
	}
	void qInsert(ElementGraphics* eg);
	void qSwap(ElementGraphics* eg, Element* e);

private: // QUndoCommand
	void undo() override { untested();
		redo();
	}
	void redo() override { untested();
		if(_first){
			do_it_first();
			_first = false;
		}else{
			do_it();
		}
	}

private:
	void do_it_first();
	void do_it();

	template<class T>
	void expandSwap(T& rem);
	template<class T>
	void postRmPort(pos_t, T&);
	template<class T>
	bool addmerge(ElementGraphics*, T& rem);
	template<class T>
	void save(T& rem, T& add);

	QList<ElementGraphics*> items(QRectF const& area) const;
	QList<ElementGraphics*> items(QPointF const &pos,
                                 Qt::ItemSelectionMode mode=Qt::IntersectsItemShape,
                                 Qt::SortOrder order = Qt::DescendingOrder) const;
	Node const* nodeAt(pos_t const&) const;
	SchematicScene const* scene() const{
		return &_scn;
	}

private:
	list_t _ins;
	list_t _del;
	std::vector<swap_t*> _swap;
	bool _first;
	SchematicScene& _scn;
};
/*--------------------------------------------------------------------------*/
/*--------------------------------------------------------------------------*/
#endif