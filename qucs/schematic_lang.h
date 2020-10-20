// 2018 Felix
// QUCS Project
// GPLv3+
//

#ifndef QUCS_SCHEMATIC_LANG_H
#define QUCS_SCHEMATIC_LANG_H

#include "object.h"
#include "language.h"
#include "schematic_symbol.h"

class SchematicModel;

class SchematicLanguage : public DocumentLanguage{
protected:
	SchematicLanguage() : DocumentLanguage() {}
public:
	virtual ~SchematicLanguage() {}
	virtual void parse(DocumentStream& stream, SchematicSymbol&) const=0;
};

template<class container>
void schematicParse(DocumentStream& s, SchematicSymbol& c, SchematicLanguage const* L)
{
	assert(L);
	while(!s.atEnd()){ untested();
		L->parse(s, c);
		assert(s.atEnd()); // happens with legacy lang
	}
}


#endif